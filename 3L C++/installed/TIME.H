/* 
 * TIME.H
 */

#define CLK_TCK 1
#ifndef _TIME_TYPES_DEFINED
#define _TIME_TYPES_DEFINED  1
typedef int clock_t;
typedef int time_t;
#endif

#ifndef _SIZE_T_DEFINED
#define _SIZE_T_DEFINED	1
typedef unsigned int size_t;
#endif

clock_t clock(void);
time_t time(time_t *);
