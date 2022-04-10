/*
 * SIGNAL.H
 */
 
#ifndef _SIG_ATOMIC_T_DEFINED
#define _SIG_ATOMIC_T_DEFINED    1
typedef int sig_atomic_t; 
#endif

#define  SIG_DFL  ((void (*)(int)) 0)
#define  SIG_IGN  ((void (*)(int)) 1)

#define  SIGABRT  1
#define  SIGFPE   2
#define  SIGILL   3
#define  SIGINT   4
#define  SIGSEGV  5
#define  SIGTERM  6

#define  SIG_ERR  ((void (*)(int)) -1)

void (*signal(int, void (*)(int)))(int);
int raise(int);

