/*
 * STDDEF.H
 */

#define  NULL     0

#ifndef  _SIZE_T_DEFINED
#define  _SIZE_T_DEFINED   1
typedef unsigned int size_t;
#endif

#ifndef  _PTRDIFF_T_DEFINED
#define  _PTRDIFF_T_DEFINED 1
typedef int ptrdiff_t;
#endif

#ifndef  _WCHAR_T_DEFINED
#define  _WCHAR_T_DEFINED  1
typedef char wchar_t;
#endif

#define offsetof(_t, _m)     ((size_t) &((_t *)0)->_m)
