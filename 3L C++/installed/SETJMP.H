/*
 * SETJMP.H
 */

#ifndef _JMP_BUF_DEFINED
#define _JMP_BUF_DEFINED  1
typedef int jmp_buf[2];
#endif

int setjmp(jmp_buf);
void longjmp(jmp_buf, int);
