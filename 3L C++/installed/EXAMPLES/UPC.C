/* upc.c	standalone processing task; communicates with driver.c */

#include <chan.h>
#include <ctype.h> 

main(argc, argv, envp, in_ports, ins, out_ports, outs)
int argc, ins, outs;
char *argv[], *envp[];
CHAN *in_ports[], *out_ports[];
{
   int c;
   
   for (;;) {
      chan_in_word(&c, in_ports[0]);
      if (c == -1) break;   /* terminate task */
      chan_out_word( _toupper(c), out_ports[0] );
   }
}
