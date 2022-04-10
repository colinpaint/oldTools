/*
 * CTYPE.H
 */

#ifndef _CTYPE_H

#define _CTYPE_H  1

int isalnum(int);
int isalpha(int);
int iscntrl(int);
int isdigit(int);
int isgraph(int);
int islower(int);
int isprint(int);
int ispunct(int);
int isspace(int);
int isupper(int);
int isxdigit(int);
int isascii(int);
int tolower(int);
int toupper(int);

#define  _UPPER   0x01
#define  _LOWER   0x02
#define  _DIGIT   0x04
#define  _CNTRL   0x08
#define  _PUNCT   0x10
#define  _BLANK   0x20
#define  _SPACE   0x40
#define  _XDIGIT  0x80

extern char _ctype[];      /* macros use lookup table in library */

#define  isalnum(c)  (_ctype[c]&(_UPPER|_LOWER|_DIGIT))
#define  isalpha(c)  (_ctype[c]&(_UPPER|_LOWER))
#define  iscntrl(c)  (_ctype[c]&_CNTRL)
#define  isdigit(c)  (_ctype[c]&_DIGIT)
#define  isgraph(c)  (_ctype[c]&(_PUNCT|_UPPER|_LOWER|_DIGIT))
#define  islower(c)  (_ctype[c]&_LOWER)
#define  isprint(c)  (_ctype[c]&(_PUNCT|_UPPER|_LOWER|_DIGIT|_BLANK))
#define  ispunct(c)  (_ctype[c]&_PUNCT)
#define  isspace(c)  (_ctype[c]&_SPACE)
#define  isupper(c)  (_ctype[c]&_UPPER)
#define  isxdigit(c) (_ctype[c]&_XDIGIT)
#define  isascii(c)  ((c)<0200)

#define  _toupper(c) (islower(c)?(c)-'a'+'A':(c))
#define  _tolower(c) (isupper(c)?(c)-'A'+'a':(c))

#endif
