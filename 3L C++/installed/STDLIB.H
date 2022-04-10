/*
 * STDLIB.H
 */

#define RAND_MAX    (32767)
#define ERANGE      34

#ifndef _IMST2
#define HUGE_VAL LL_HUGE_VAL
#define EXIT_SUCCESS 0
#define EXIT_FAILURE 1
extern double HUGE_VAL;
#endif

#define MB_CUR_MAX  1

#ifndef _SIZE_T_DEFINED
#define _SIZE_T_DEFINED  1
typedef unsigned int size_t;
#endif

#ifndef  _WCHAR_T_DEFINED
#define  _WCHAR_T_DEFINED  1
typedef char wchar_t;
#endif

#ifndef _DIV_T
#define _DIV_T 1
typedef struct {
   int quot;
   int rem;
}div_t;

#ifndef _IMST2
typedef struct {
   long quot;
   long rem;
}ldiv_t;
#endif
#endif

#ifndef _IMST2
double atof(const char *);
long int atol(const char *);
long int strtol(const char *, char **, int);
unsigned long int strtoul(const char *, char **, int);
void abort(void);
char *getenv(const char *);
int system(const char *);
long int labs(long int);   /*007*/
#pragma __3L inline labs 39
ldiv_t ldiv(long, long);
double strtod(const char *, char **);
#endif

#define NULL 0

int atoi(const char *);
int rand(void);
void srand(unsigned int);
void *calloc(size_t, size_t);
void free(void *);
void *malloc(size_t);
void *realloc(void *, size_t);
int atexit(void (*)(void));
void exit(int);
void *bsearch(const void *, const void *, size_t, size_t,
              int (*)(const void *, const void *));
void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
int abs(int);
#pragma __3L inline abs 39
div_t div(int, int);
int mbtowc (wchar_t *, const char *, size_t);
int mblen (const char *, size_t);
int wctomb (char *, wchar_t);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t wcstombs (char *, const wchar_t *, size_t);
