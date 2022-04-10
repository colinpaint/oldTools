/*
** VARARGS.H
*/

#ifndef _VA_LIST_DEFINED
#define _VA_LIST_DEFINED 1
typedef void *va_list;
#endif

#define va_dcl           va_list va_alist;
#define va_start(_ap)    ((void)(_ap = (va_list)(&va_alist)))
#define va_arg(_ap, _ty) (_ap = (_ty *)_ap + 1, *((_ty *)_ap - 1))
#define va_end(_ap)      ((void) 0)

