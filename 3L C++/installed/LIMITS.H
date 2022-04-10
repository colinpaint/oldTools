/*
 * LIMITS.H
 */

#define SCHAR_MIN   (-128)
#define SCHAR_MAX   127
#define CHAR_BIT    8
#define UCHAR_MAX   255
#define CHAR_MIN    0
#define CHAR_MAX    255
#define MB_LEN_MAX  1
 
#ifdef _IMST2

#define UINT_MAX     0xFFFFU
#define INT_MAX      0x7FFF
#define INT_MIN      0x8000
#define SHRT_MIN     0x8000
#define SHRT_MAX     0x7FFF
#define USHRT_MAX    0xFFFFU

#else

#define LONG_MAX     0x7FFFFFFFL
#define LONG_MIN     0x80000000L
#define ULONG_MAX    0xFFFFFFFFUL
#define UINT_MAX     0xFFFFFFFFU
#define INT_MAX      0x7FFFFFFF
#define INT_MIN      0x80000000
#if _3L_SHORT_BITS == 32
#define SHRT_MIN     0x80000000
#define SHRT_MAX     0x7FFFFFFF
#else
#define SHRT_MIN     (-32768)
#define SHRT_MAX     32767
#endif
#define USHRT_MAX    0x0000FFFF

#endif

