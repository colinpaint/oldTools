/*
 * STDIO.H
 */
#define   NULL      0
#ifndef   _SIZE_T_DEFINED
#define   _SIZE_T_DEFINED   1
typedef unsigned int size_t;
#endif

#ifndef _IMST2

#define O_BINARY 4
#define O_TEXT   8

#define BUFSIZ   512
#define _NFILE   22 /* #files that can be handled */

#ifndef _IOBUF_DEFINED
#define _IOBUF_DEFINED    1
typedef struct _iobuf {
   char *_ptr;      /* next character position */
   int  _cnt;       /* number of characters left */
   char *_base;     /* location of buffer */
   int  _flag;      /* mode of file access */
   int  _file;      /* file descriptor */
} FILE;
#endif

#define   fileno(p) (p)->_file

#ifndef _IOB_DEFINED
#define _IOB_DEFINED    1
extern FILE _iob[_NFILE];
#endif

#define   stdin     (&_iob[0])
#define   stdout    (&_iob[1])
#define   stderr    (&_iob[2])

#define   _IOREAD   01   /* file open for reading */
#define   _IOWRT    02   /* file open for writing */
#define   _IORW     04
#define   _IONBF    010  /* file is unbuffered */
#define   _IOSTRG   020
#define   _IOMYBUF  040
#define   _IOEOF    0100
#define   _IOERR    0200
#define   _IOLBF    0400                  /*004*/
#define   _IOFBF    01000

#define   EOF       (-1)

#define   FILENAME_MAX  256
#define   FOPEN_MAX     15

#ifndef   _FPOS_T_DEFINED
#define   _FPOS_T_DEFINED   1
typedef struct {
   long int _offset;
} fpos_t;
#endif

#define   L_tmpnam  9
#define   TMP_MAX   0x10000

#define   SEEK_CUR  1
#define   SEEK_END  2
#define   SEEK_SET  0
 
#define   feof(p)   ((p)->_flag&_IOEOF)
#define   ferror(p) ((p)->_flag&_IOERR)
#define   getc(p)   (--(p)->_cnt>=0?*(p)->_ptr++:_filbuf(p))
#define   putc(x,p) (--(p)->_cnt>=0?*(p)->_ptr++=(x):_flsbuf((x),p))

#define   getchar()      getc(stdin)
#define   putchar(x)     putc(x,stdout)

#ifndef _STDIO_FNS
#define _STDIO_FNS   1
typedef void *_va_list;
int remove(const char *);
int rename(const char *, const char *);
int fclose(FILE *);
int fflush(FILE *);
FILE *fopen(const char *, const char *);
FILE *freopen(const char *, const char *, FILE *);
void setbuf(FILE *, char *);
int setvbuf(FILE *, char *, int, size_t);
int fprintf(FILE *, const char *, ...);
int fscanf(FILE *, const char *, ...);
int printf(const char *, ...);
int scanf(const char *, ...);
int sprintf(char *, const char *, ...);
int sscanf(const char *, const char *, ...);
int vfprintf(FILE *, const char *, _va_list );
int vprintf(const char *, _va_list );
int vsprintf(char *, const char *, _va_list );
int fgetc(FILE *);
char *fgets(char *, int, FILE *);
int fputc(int, FILE *);
int fputs(const char *, FILE *);
char *gets(char *);
int puts(const char *);
int ungetc(int, FILE *);
size_t fread(void *, size_t, size_t, FILE *);
size_t fwrite(const void *, size_t, size_t, FILE *);
int fgetpos(FILE *, fpos_t *);
int fseek(FILE *, long int, int);
int fsetpos(FILE *, const fpos_t *);
long int ftell(FILE *);
void rewind(FILE *);
void clearerr(FILE *);
void perror(const char *);
char *tmpnam(char *);
FILE *tmpfile(void);

#endif /* _STDIO_FNS */
#endif /* _IMST2     */
