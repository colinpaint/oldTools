/***   MANDELM.C
 ***
 ***   Copyright (c) 1988 3L Ltd
 ***
 ***   Example program: Mandelbrot set evaluation and display.
 ***   NB: This application requires a Colour Graphics Adaptor.
 ***
 ***   The application
 ***   ---------------
 ***
 ***   The application consists of two tasks:
 ***
 ***   (1) MANDELM (this file).   This is the master task, and runs in the
 ***       root transputer.
 ***   (2) MANDELW.   This is the worker task, and runs in all the other
 ***       transputers of the net.
 ***
 ***   The flood configurer, FCONFIG, can be used to produce an executable
 ***   file which will automatically distribute the worker tasks across an
 ***   arbitrary network and route work packets from the master to the
 ***   workers.
 ***
 ***   It is also possible to run the application in a single transputer.
 ***   This will work automatically if the application is configured using
 ***   FCONFIG.  Alternatively, a static single-transputer configuration
 ***   could be built by hand, using CONFIG.  A suitable configuration file
 ***   may be found in MANDEL.CFG.
 ***
 ***   As well as various routines from the Parallel C run-time library,
 ***   MANDELM must be linked with the CGA primitives module, CGA.BIN.
 ***   A file MANDELM.LNK is supplied, which may be used to link MANDELM,
 ***   like this:
 ***
 ***      LINKT @MANDELM.LNK,MANDELM.B4
 ***
 ***   Functions of the tasks
 ***   ----------------------
 ***
 ***   MANDELM is told by the user which part of the Mandelbrot set to
 ***   evaluate.   It then breaks this up into 100 packets, and sends them
 ***   to the network of MANDELW's.   As the results from each return, they
 ***   displayed on the PC's screen.
 ***
 ***   Internals of MANDELM
 ***   --------------------
 ***
 ***   The task contains three threads.
 ***
 ***   (1) The MAIN thread.
 ***   This runs in the function main().   It intialises the other two threads
 ***   and then goes into a loop, once round for each Mandelbrot display.
 ***   For each, it gets instructions from the user, and then signals the
 ***   SEND thread to start work by using the parameters_are_ready semaphore.
 ***   It keeps track of completed work by examining tally_done, which is
 ***   incremented by RECEIVE everytime a RESULTS packet is displayed;  when-
 ***   ever it notices that tally_done has changed, it updates the PC's
 ***   display;  and when tally_done reaches 100, MAIN knows that the display
 ***   is complete.
 ***
 ***   (2) The SEND thread.
 ***   This knows when to start work by examining the parameters_are_ready
 ***   semaphore.   It then breaks the job into 100 small jobs, places the
 ***   details into a COMMAND structure (defined in file MANDEL.H) and uses
 ***   the net_send function to send it off to the network of MANDELW's.
 ***   Notice the SEND does not specify WHICH worker task is to do any
 ***   particular job;  this is decided by the network of router tasks.
 ***
 ***   (3) The RECEIVE thread.
 ***   This simply waits till a packet arrives from the network of MANDELW's
 ***   and then displays it.   Each packet contains all the necessary
 ***   information to display it, so RECEIVE does not need to keep track of
 ***   which packet is which.   Every time it does a display, RECEIVE
 ***   increments tally_done, so that MAIN can tell when the whole display
 ***   is complete.
 ***
 ***   Rev 001 21-Jul-89 ADC  make send(), receive() 'void' instead of default
 ***                          'int' to match thread_create() prototype for its
 ***                          first (function pointer) parameter.
 ***   Rev 000 16-Dec-87 JF
 ***
 ***/

#include <stdio.h>
#include <dos.h>
#include <thread.h>
#include <sema.h>
#include <par.h>
#include <net.h>
#include "cga.h"
#include "mandel.h"

/* Interface to SEND thread */ 
static SEMA parameters_are_ready;

/* Interface to RECEIVE thread */
static int tally_done;

/* Current Mandelbrot and display parameters */
static float x_coord, y_coord, gap;
static int thresh1, thresh2, thresh3;   

/* Define the way the job is broken into packets */
#define X_INCREMENT ((CGA_LORES_XMAX+1)/10)
#define Y_INCREMENT ((CGA_YMAX+1)/10)
#define PACKETS 100


/*      
 * This function is invoked by MAIN using thread_create to
 * create the SEND thread.
 *
 */

void send ()
{
   int                 x, y;
   COMMAND             c;
   
   for (;;) {

      /* Wait here until MAIN signals it's okay to go ahead */
      sema_wait (&parameters_are_ready);

      /* Fill in the fixed parts of the command */
      c.x_coord = x_coord;
      c.y_coord = y_coord;
      c.gap = gap;
      
      /* Send off the packets to be done.   Each includes the coordinates
         of the top-left and bottom-right corners of the area to do.
         This both tells the worker task what values to generate and
         identifies the RESULTS packet when it arrives in the RECEIVE
         thread (since there's no guarantee that the results will arrive
         in the same order the commands are sent out)                */
      for (x = 0; x < CGA_LORES_XMAX; x += X_INCREMENT) {
         c.tlx = x; c.brx = x + X_INCREMENT - 1;
         for (y = 0; y <= CGA_YMAX; y += Y_INCREMENT) {
            c.tly = y; c.bry = y + Y_INCREMENT - 1;
            /* Send off the next packet */
            net_send (sizeof(COMMAND), &c, 1);
         }
      }
      
   }
}


/*
 * This function is invoked by MAIN using thread_create to
 * create the RECEIVE thread.
 *
 */

void receive ()
{
   RESULTS             r;
   int                 len, ready, x, y, i, n, colour;

   for (;;) {
      
      /* Thread will wait here till a packet arrives */
      len=net_receive (&r, &ready);
      i = 0;

      /* The results packet includes the coordinates of the top-left
         and bottom-right corners of the data, so we know where to
         display it.                                                 */
      for (y=r.tly; y<=r.bry; y++) {
         for (x=r.tlx; x<=r.brx; x++) {
            n = r.counts[i++];
            /* Received 0 means 1;  received 255 means 256 */
            n += 1;
            /* Decide on the colour <- thresholds, and display... */
            colour = (n>=thresh1) + (n>=thresh2) + (n>=thresh3);
            cga_lores_plot (x, y, colour);
         }
      }
      
      /*  Increment the tally of packets displayed */
      tally_done += 1;
      
   }
}


/*
 * The MAIN thread runs here
 *
 */
 
main ()
{

   float range;
   int previous_tally;

   /* Make sure we have text mode (and clear screen), then sign on */
   video_mode (MONO_80COL_TEXT_MODE);
   printf ("\nCopyright (c) 1988 3L Ltd\n\n");
   printf ("Example program: Mandelbrot set evaluation and display\n");
   printf ("NB: This program requires a Colour Graphics Adaptor\n\n");

   /* Initialise this SEMA to 0 BEFORE we start the SEND thread.
      This means it will wait until we tell it it's safe to go ahead */
   sema_init (&parameters_are_ready, 0);
   /* Now start the other two threads */
   thread_create (send, 10000, 2,0,0);
   thread_create (receive, 10000, 2,0,0); 
   
   for (;;) {
      
      /* This will ensure that no other threads are using the C
         run-time library (in fact, in this case they won't be,
         but I have done it here as an example...)                   */
      sema_wait (&par_sema);
      printf ("\nInput X coordinate: "); scanf ("%f", &x_coord);
      printf ("Input Y coordinate: "); scanf ("%f", &y_coord);
      printf ("Input Y range:      "); scanf ("%f", &range);
      gap = range / (float)(CGA_YMAX+1);
      y_coord = y_coord + range;

      printf ("Threshold 1: "); scanf ("%d", &thresh1);
      printf ("Threshold 2: "); scanf ("%d", &thresh2);
      printf ("Threshold 3: "); scanf ("%d", &thresh3);
      getchar ();  /* Consume the final NL */
      
      /* We have finished with the C RTL - release it */
      sema_signal (&par_sema);
   
      /* Into graphics (CGA low resolution) mode */
      video_mode (CGA_LORES_GRAPHICS_MODE);

      /* Before we set SEND going, reset the count of finished
         packets to zero - RECEIVE will count it back up             */
      tally_done = 0;
      /* All ready - set it going! */
      sema_signal (&parameters_are_ready);
      
      previous_tally = 0;
            
      /* Until all the packets have been done, just keep updating the
         display when necessary                                       */
      while (tally_done < PACKETS) {
         while (tally_done==previous_tally) {
            /* Wait here till something happens.   Use thread_deschedule
               to save cpu time                                       */
            thread_deschedule ();
         }
         /* Send the picture up to the PC's display memory */
         cga_update ();
         previous_tally = tally_done;
      }
      
      /* In case tally_done was updated to = PACKETS AFTER the last
         cga_update, do another one to ensure the PC's display is
         up-to-date                                                   */
      cga_update ();
      
      /* One again, wait for the RTL to be free; then beep and wait
         till the user strikes any key                              */
      sema_wait(&par_sema);
      putchar ('\007');
      getchar ();
      sema_signal(&par_sema);
      
      /* Clear the screen and set text mode again */
      video_mode (MONO_80COL_TEXT_MODE);
   }
      
}
