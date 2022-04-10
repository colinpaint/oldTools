/*
 * SEMA.H
 */

#ifndef SEMA_H       /* do this only once */
#define SEMA_H
typedef struct sema {
   int value;
   char *queue;
} SEMA;
#endif

void sema_init(SEMA *, int);
void sema_signal(SEMA *);
void sema_signal_n(SEMA *, int);
void sema_wait(SEMA *);
void sema_wait_n(SEMA *, int);
int sema_test_wait(SEMA *);

