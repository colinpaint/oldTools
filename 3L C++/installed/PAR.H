/*
 * PAR.H
 */

#include <sema.h>
extern SEMA par_sema;

#ifndef _IMST2
int par_fprintf(void *, char *, ... );
int par_printf(char *, ... );
#endif

void par_free(void *);
void *par_malloc(unsigned int);

