/***   MANDELW.C
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
 ***   (1) MANDELM.   This is the master task, and runs in the root
 ***       transputer.
 ***   (2) MANDELW (this file).   This is the worker task, and runs in all the
 ***       other transputers of the net.  It uses the 'net_' library functions
 ***       to obtain work packets originating from MANDELM and send back
 ***       result packets.
 ***
 ***   A file MANDELW.LNK is supplied, which may be used to link MANDELW,
 ***   like this:
 ***
 ***      LINKT @MANDELW.LNK,MANDELW.B4
 ***
 ***   For further details, see the top of MANDELM.C.
 ***
 ***   Internals of MANDELW
 ***   --------------------
 ***
 ***   The task waits till a packet arrives.   This is a COMMAND struct,
 ***   containing details of the portion of the Mandelbrot to do.   It
 ***   then does the work, storing the results in a RESULTS struct, which
 ***   is then sent back to MANDELM.
 ***
 ***/
  
#include <net.h>
#include "mandel.h"

static COMMAND c;
static RESULTS r;

main ()
{

   int      x, y, count, n, ready;
   float    gap, x_coord, y_coord,
            ac, bc, two=2.0, four=4.0, size, a2, b2, a, b;

   for (;;) {
      
      /* Task will wait here until a packet arrives */
      n = net_receive (&c, &ready);
      /* Unpack some of the parameters */
      x_coord=c.x_coord;
      y_coord=c.y_coord;
      gap=c.gap;

      /* The top-left and bottom-right coordinates are supplied
         in the command packet                                 */
      n = 0;      
      for (y=c.tly; y<=c.bry; y++) {
         bc = y_coord - y*gap;
         for (x=c.tlx; x<=c.brx; x++) {
            ac = x*gap + x_coord;
            a = ac; b = bc; size = 0.0; count = 0;
            /* Do calculation until more than 2.0 away or
               until count reaches 256 */
            a2 = a*a; b2= b*b;
            while ((size < four) && (count < 256)) {
               b = two*a*b + bc;
               a = a2 - b2 + ac;
               a2 = a*a; b2= b*b;
               size = a2 + b2;
               count++;
            }
            /* Stored 0 means 1; stored 255 means 256 */
            r.counts[n++] = count-1;
         }
      }
      
      /* Send the top-left and bottom-right coordinates back in the
         RESULTS packet too, so that the RECEIVE thread of MANDELM can
         identify the packet.                                          */
      r.tlx = c.tlx; r.tly = c.tly;
      r.brx = c.brx; r.bry = c.bry;
      net_send (16+n, &r, 1);
      
   }

}

