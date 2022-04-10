/*
 * ALT.H
 */

#include <chan.h>

extern int alt_wait(int, ...);
extern int alt_nowait(int, ...);
extern int alt_wait_vec(int, CHAN *[]);
extern int alt_nowait_vec(int, CHAN *[]);
