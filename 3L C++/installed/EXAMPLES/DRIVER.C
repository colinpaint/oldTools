/* driver.c	file I/O for uppercasing example */

#include <chan.h>
#include <stdio.h>

main(argc, argv, envp, in_ports, ins, out_ports, outs)
int argc, ins, outs;
char *argv[], *envp[];
CHAN *in_ports[], *out_ports[];
{
   int c;
   for (;;) {
      c = getchar();
      chan_out_word( c, out_ports[2] );
      if (c == EOF) break;
      chan_in_word( &c, in_ports[2] );
      putchar(c);
   }
}

