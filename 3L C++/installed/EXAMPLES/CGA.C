/***   CGA.C
 ***
 ***   Primitives for CGA graphics (prelim)
 ***
 ***   Rev 00  27-Nov-87  JF    Based on some by ADC
 ***   
 ***   The method used by these very simple routines is to keep a complete
 ***   copy of the display in the transputer's memory.   This is set up the
 ***   first time video_mode is called.   Call on cga_lores_plot and
 ***   cga_hires_plot alter this copy of the display.   When cga_update
 ***   is called, the whole buffer is sent off to the PC's display memory.
 ***/
      
#define NULL (0)
     
#include <stdio.h>
#include <dos.h>

#include "cga.h"

#define	BIOS_VIDEO_DRIVER 0x10
#define VIDEO_SET_MODE    0x00

/* CGA specific definitions */

#define	CGA_BUFFER_SIZE	16384
#define BYTES_PER_LINE	80
#define CGA_BASE_ADDR	0xB8000000

#define CGA_HIRES_OFFSET(x,y)	 ((x)>>3) + ((y)>>1)*0x50 + (((y)&1)*0x2000)
#define CGA_HIRES_BITMASK(x,y)	 cga_hires_bitmask[(x)&7] /* independent of y */
static char cga_hires_bitmask[8] = {0x80, 0x40, 0x20, 0x10, 0x8, 0x4, 0x2, 0x1};

#define CGA_LORES_OFFSET(x,y)     ((x)>>2) + ((y)>>1)*0x50 + (((y)&1)*0x2000)
#define CGA_LORES_BITMASK(x,y,c)  (c << (cga_lores_shift[(x)&3]))
static char cga_lores_shift[4] = {6, 4, 2, 0};

static char *buf = NULL;

/* Send the whole buffer to the display */
cga_update()
{
   send86( /* num bytes */ CGA_BUFFER_SIZE,
           /* from */      buf,
           /* to */        CGA_BASE_ADDR);
}

/* Split up the transfer into 512 byte chunks */
send86(n, from, to)
char *from;
pcpointer to;
{
   int k;
   while (n > 0) {
      k = n>512? 512 : n;
      n -= k;
      to86(k, from, to);
      from += k;
      to += k;
   }
}

/* Display a point (hires) */
cga_hires_plot(x,y)
{
   buf[CGA_HIRES_OFFSET(x,y)] |= CGA_HIRES_BITMASK(x,y);
}

/* Display a point (lores) */
cga_lores_plot (x, y, colour)
{
   buf[CGA_LORES_OFFSET(x,y)] |= CGA_LORES_BITMASK(x,y,colour);
}

/* Set a video mode */
video_mode(x)
{
   union REGS regs;

   if ((x & DONT_CLEAR_DISPLAY) == 0) {
      /* If asked for, clear the display buffer by freeing it and 
         allocating it again                                      */
      if (buf != NULL) free (buf);
      buf = calloc (1, CGA_BUFFER_SIZE);
   } else {
      if (buf == NULL) buf = calloc (1, CGA_BUFFER_SIZE);
   }
   regs.h.ah = VIDEO_SET_MODE;
   regs.h.al = x;
   int86(BIOS_VIDEO_DRIVER, &regs, &regs);
}


