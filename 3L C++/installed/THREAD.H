/*
 * THREAD.H
 */
 
#define THREAD_URGENT   0
#define THREAD_NOTURG   1

char *thread_create( void (*)(), int, int, ... );
void thread_deschedule(void);
#pragma __3L inline thread_deschedule 34
int thread_priority(void);
#pragma __3L inline thread_priority 33
void thread_restart(void *);
#pragma __3L inline thread_restart 32
void thread_start( void (*)(), void *, int, int, int, ... );
void thread_stop(void);
#pragma __3L inline thread_stop 31
