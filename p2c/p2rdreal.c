/* Output from p2c 2.00.Oct.15, the Pascal-to-C translator */
/* From input file "p2rdreal.pas" */


/*[b+]*/
/* NOTICE OF COPYRIGHT AND OWNERSHIP OF SOFTWARE:

   Copyright (C) 1986 Oregon Software, Inc.
   All Rights Reserved.

   This program is the property of Oregon Software.  The program or
   parts of it may be copied and used only as provided under a signed
   license agreement with Oregon Software.  Any support purchased from
   Oregon Software does not apply to user-modified programs.  All copies
   of this program must display this notice and all copyright notices.


   Release version: 0045 Level: 1
   Processor: All
   System: All

   Pascal-2 Real Number Parser

  Last modified by KRIS on 21-Nov-1990 15:18:10

  Purpose:
Update release version for PC-VV0-GS0 at 2.3.0.1

*/
/*$nomain*/


#include <p2c/p2c.h>


/*[f-]*/

#define bitsperbyte     8   /* number of bits per binary byte */

#define nibblesize      16   /* number of elements in nibble */
#define bytesize        256   /* number of elements in byte */
/* wordsize      = 65536 */
/* number of elements in word */

/* maxnibble     =    15 */
/* nibblesize - 1 */
#define maxbyte         255   /* bytesize - 1  */

#define maxword         65535L   /* wordsize - 1 */

#define halfwordsize    32768L   /* wordsize div 2 */

#define halfmaxword     32767   /* maxword div 2 */

#define maxrealwords    4   /* maximum number of words per real */
#define maxrealbytes    8   /* maximum number of bytes per real */
#define maxrealbits     64   /* maximum number of bits per real */


/*[f+]*/


/*[f-]*/
typedef uchar byte;

typedef unsigned short word;


typedef unsigned short realmode;


typedef word realarray[maxrealwords];

typedef enum {
  noerror, syntaxerr, underflowerr, overflowerr
} realstatus;

typedef enum {
  DECformat, IEEEformat, INTELformat, IBMformat
} RealFormat;

typedef enum {
  SinglePrecision, DoublePrecision, QuadPrecision
} RealPrecision;

typedef enum {
  ToNearest, ToZero, ToPosInf, ToNegInf
} RealRounding;

/* signed zero */
/* normalized operand */
/* denormalized operand */
/* signed Infinity */
/* quiet NaN */
/* signalling NaN */
typedef enum {
  ZeroClass, NormalClass, DenormalClass, InfClass, QNaNClass, SNaNClass
} RealClass;

/*[f+]*/




extern Void p2ReadReal PP((Char (*nextch) PP((int firstch)), word *result,
			   realstatus *errorcode, realmode mode,
			   boolean *isdouble));


#define MaxInBuf        804   /* to support IEEE double with denormals */

/*
  == (leading binary zeroes) + (precision+1) - (leading decimal zeroes)

  DECsingle   ==      127     +  25   -   38  ==        114
  DECdouble   ==      127     +  57   -   38  ==        146

  IEEEsingle  == ( 126 + 23)  +  25   -   45  ==        129
  IEEEdouble  == (1022 + 52)  +  54   -  323  ==        805

    buffer size for formats with 15-bit exponent fields :

  DECquad(H)  ==      16383    + 114  - 4932  ==      11565

  IEEEextend  == (16382 +  63) +  65  - 4950  ==      11560
  IEEEquad    == (16382 + 111) + 113  - 4964  ==      11642
*/

#define decbase         10   /* decimal radix */
#define binbase         256   /* binary radix */
#define maxproduct      2559   /* decbase * binbase - 1 */

#define MaxExpon        9999
    /* maximum exponent accepted during input scan */
#define ExpLimit        999   /* (MaxExpon - 9) div 10 */


typedef short BufferIndex;

typedef short DecExpType;

typedef short BinExpType;



/* Local variables for p2ReadReal: */
struct LOC_p2ReadReal {
  Char (*nextch) PP((int firstch));

  byte digits[MaxInBuf + 1];
  realarray value;   /* local copy of final binary result */

  RealFormat format;   /* */
  RealPrecision precision;   /* */

  char realbits;   /* total number of binary bits of significance */
  char realbytes;   /* number of bytes of significance */
  char realwords;   /* number of words in target real */
  char pointoffset;   /* 1 for IEEEformat, 0 for others */

  char exponoffset;   /* exponent offset within high byte */

  Char ch;   /* last char returned from "nextch" function */

  DecExpType MaxDecExp;   /* maximum decimal exponent value */
  DecExpType MinDecExp;   /* minimum decimal exponent value */

  BinExpType MaxBinExp;   /* maximum unbiased exponent value */
  BinExpType MinBinExp;   /* minimum unbiased exponent value */

  BinExpType ExpBias;   /* exponent bias for this format */
  boolean StickyBit;   /* true if nonzero digits beyond buffer capacity */
  boolean reversewds;   /* true if result is stored low word to hi word */
  boolean denormalizing;   /* true if result may be gradually denormalized */

  short product;
  byte carry;
  BufferIndex frachead, fractail;
} ;


Local Void getch(LINK)
struct LOC_p2ReadReal *LINK;
{
  LINK->ch = (*LINK->nextch)(false);
}  /* getch */


Local boolean alfanumeric(ch, LINK)
Char ch;
struct LOC_p2ReadReal *LINK;
{
  return isalnum(ch);
}  /* alfanumeric */


Local Char uppercase(ch, LINK)
Char ch;
struct LOC_p2ReadReal *LINK;
{
  if (islower(ch))
    return _toupper(ch);
  else
    return ch;
}  /* uppercase */


Local boolean chEquals(c, LINK)
Char c;
struct LOC_p2ReadReal *LINK;
{
  if (uppercase(LINK->ch, LINK) == c) {
    getch(LINK);
    return true;
  } else
    return false;
}  /* chEquals */


Local Void GetFractionByte(NeedBits, LINK)
BinExpType NeedBits;
struct LOC_p2ReadReal *LINK;
{

  /* Maintains the 2 indices, "frachead" and "fractail", which delimit the
     fraction string, and "StickyBit", which records the state of digits to
     the right of "fractail", which can no longer directly affect the result.
     "NeedBits" is the computed maximum number of decimal digits which are
     required to complete the binary conversion.  The output is one byte of
     binary stored in "carry".  This routine relocates the fraction string to
     the high end of the digit buffer.
  */
  BufferIndex src, dst = MaxInBuf;
      /* used to relocate the fraction string */
  BufferIndex FORLIM;



  while (LINK->digits[LINK->fractail] == 0 && LINK->frachead <= LINK->fractail) {
    /* zero
            suppress from right */
    LINK->fractail--;
  }

  LINK->carry = 0;

  if (LINK->frachead + NeedBits <= LINK->fractail) {  /* adjust tail */
    LINK->fractail = LINK->frachead + NeedBits - 1;
    LINK->StickyBit = true;   /* truncating non-zero digits */
  }  /* adjust tail */

  if (LINK->fractail < LINK->frachead)
    return;

  FORLIM = LINK->frachead;

  for (src = LINK->fractail; src >= FORLIM; src--) {
    LINK->product = LINK->digits[src] * binbase + LINK->carry;
    LINK->digits[dst] = LINK->product % decbase;
    LINK->carry = LINK->product / decbase;
    dst--;
  }

  LINK->frachead = dst + 1;
  LINK->fractail = MaxInBuf;
}  /* GetFractionByte */


Local Void initialize(LINK)
struct LOC_p2ReadReal *LINK;
{
  long i, FORLIM;

  switch (LINK->format) {

  case IEEEformat:
  case INTELformat:
    LINK->pointoffset = 1;
    LINK->denormalizing = true;
    if (LINK->format == INTELformat)
      LINK->reversewds = true;

    switch (LINK->precision) {

    case SinglePrecision:
      LINK->realwords = 2;
      LINK->realbytes = 3;
      LINK->realbits = 24;

      LINK->ExpBias = 127;
      LINK->MaxBinExp = 127;
      LINK->MinBinExp = -126;
      LINK->MaxDecExp = 39;
      LINK->MinDecExp = -45;
      break;
      /* SinglePrecision */

    case DoublePrecision:
      LINK->realwords = 4;
      LINK->realbytes = 7;
      LINK->realbits = 53;
      LINK->exponoffset = 4;

      LINK->ExpBias = 1023;
      LINK->MaxBinExp = 1023;
      LINK->MinBinExp = -1022;
      LINK->MaxDecExp = 309;
      LINK->MinDecExp = -323;
      break;
      /* DoublePrecision */
    }/* case precision */
    break;
    /* IEEEformat */

  case DECformat:
    LINK->pointoffset = 0;
    LINK->ExpBias = 128;
    LINK->MaxDecExp = 39;
    LINK->MinDecExp = -39;
    LINK->MaxBinExp = 127;
    LINK->MinBinExp = -127;
    switch (LINK->precision) {

    case SinglePrecision:
      LINK->realwords = 2;
      LINK->realbytes = 3;
      LINK->realbits = 24;
      break;
      /* SinglePrecision */

    case DoublePrecision:
      LINK->realwords = 4;
      LINK->realbytes = 7;
      LINK->realbits = 56;
      break;
      /* SinglePrecision */
    }/* case precision */
    break;
    /* DECformat */

  case IBMformat:
    break;
    /* IBMformat */

  }/* case format */

  FORLIM = LINK->realwords;
  for (i = 0; i < FORLIM; i++)
    LINK->value[i] = 0;
}


Void p2ReadReal(nextch_, result, errorcode, mode, isdouble)
Char (*nextch_) PP((int firstch));
word *result;
realstatus *errorcode;
realmode mode;
boolean *isdouble;
{
  struct LOC_p2ReadReal V;
  RealRounding rounding;   /* */

  char impliedbit = 1;   /* 1 if binary format uses "hidden bit" */

  DecExpType ExpValue;   /* value which follows "E" during scan */
  DecExpType DecExp = 0;   /* value of decimal exponent after scan */
  BinExpType BinExp = 0;   /* final unbiased binary exponent */

  BinExpType NeedBits;   /* binary bits needed to finish conversion */

  char ZeroBits;   /* leading zero bits in high order byte */
  BinExpType DenormBits;   /* number of bits to denormalize result by */

  RealClass class_;   /* class of resultant operand */

  boolean negative;   /* true if minus sign appeared in input string */
  boolean signed_;   /* true if minus sign or plus sign encountered */
  boolean expneg;   /* true if exponent sign is negative */
  boolean RoundBit;   /* true if the next bit past the LSB is non-zero */
  boolean RoundUp;   /* true if rounding is applied to the fraction */
  boolean Inexact;   /* true if the conversion is not exact */
  word shifter;

  byte power, temp;

  BufferIndex dpt = 0;   /* index into digits[] when scanning input */
  BufferIndex i;   /* temporary induction var */
  BufferIndex j;   /* temporary induction var */

  /* indices which delimit the integer and fraction parts of digits[] buffer */

  BufferIndex inthead, inttail, FORLIM;

  


  /* not reverse words */


  V.nextch = nextch_;
  *isdouble = false;   /*default*/

  /* unpack the mode parameter word into constituent parts */

  rounding = (RealRounding)(mode & (nibblesize - 1));

  V.precision = (RealPrecision)((mode / nibblesize) & (nibblesize - 1));

  V.format = (RealFormat)((mode / bytesize) & (nibblesize - 1));

  /* correct value for most formats */
  V.exponoffset = 7;   /* correct value for all single formats */
  V.reversewds = false;   /* correct value for all except iAPX86 */
  V.denormalizing = false;   /* correct value for non-IEEE formats */

  V.StickyBit = false;
  *errorcode = noerror;

  V.ch = (*V.nextch)(true);

  while (V.ch == ' ')
    getch(&V);

  negative = (V.ch == '-');

  signed_ = (negative || V.ch == '+');

  if (signed_)
    getch(&V);

  if (V.ch < '0' || V.ch > '9') {
    *errorcode = syntaxerr;

    if (V.format == IEEEformat || V.format == INTELformat)
    {  /* permit certain keywords */
      class_ = SNaNClass;   /* signalling NaN */

      if (chEquals('I', &V)) {
	if (chEquals('N', &V)) {
	  if (chEquals('F', &V)) {  /* scan Infinity syntax */
	    /* permit alternate spellings */
	    if (chEquals('I', &V)) {
	      if (chEquals('N', &V)) {
		if (chEquals('I', &V)) {
		  if (chEquals('T', &V)) {
		    if (chEquals('Y', &V))
		      getch(&V);
		  }
		}
	      }
	    }

	    /* test for proper termination */
	    if (!alfanumeric(V.ch, &V)) {   /* Infinity */
	      class_ = InfClass;
	      /* ch <> 'F' */
	    }
	  }  /* aliases */


	}
      } else {
	/* ch <> 'N' */
	if (chEquals('N', &V)) {
	  if (chEquals('A', &V)) {
	    if (chEquals('N', &V)) {  /* check NaN syntax */
	      /* permit parenthesized argument */
	      if (chEquals('(', &V)) {
		while (!chEquals(')', &V))
		  getch(&V);
	      }

	      /* test for proper termination */
	      if (!alfanumeric(V.ch, &V)) {   /* quiet NaN */
		class_ = QNaNClass;
		/* ch <> 'N' */
		/* ch <> 'A' */
	      }
	    }  /* check NaN syntax */


	  }
	}
      }
    }  /* if format = IEEEformat */


    /* ch <> 'I' */

    /* ch <> 'N' */
    goto _L1;
  }  /* special operands */

  /* - - -   scan integer part   - - - */

  while (V.ch == '0')
    getch(&V);

  while (isdigit(V.ch)) {
    if (dpt < MaxInBuf) {  /* insert integer digit */
      dpt++;
      V.digits[dpt] = V.ch - '0';
    }  /* insert integer digit */
    else {
      DecExp++;
      if (V.ch != '0')
	V.StickyBit = true;
    }
    /* dpt => MaxInBuf */
    /* buffer is full */
    /* buffer is full */
    getch(&V);
  }  /* while ch is digit */

  DecExp += dpt;

  /* - - -   scan fraction part   - - - */

  if (chEquals('.', &V)) {
    if (V.ch < '0' || V.ch > '9')
      *errorcode = syntaxerr;

    if (dpt == 0) {   /* no integer part */
      while (chEquals('0', &V))
	DecExp--;
    }

    while (isdigit(V.ch)) {
      if (dpt < MaxInBuf) {  /* insert fraction digit */
	dpt++;
	V.digits[dpt] = V.ch - '0';
      }  /* insert fraction digit */
      else {
	if (V.ch != '0')
	  V.StickyBit = true;
      }
      /* dpt => MaxInBuf */
      getch(&V);
    }  /* while ch is digit */

  }  /* scan fraction part */

  /* - - -   scan exponent part   - - - */

  V.ch = uppercase(V.ch, &V);

  if (V.ch == 'E' || V.ch == 'D') {  /* exponent scan */
    /* It's a double constant, set the flag and precision.
    */
    if (V.ch == 'D') {
      *isdouble = true;
      V.precision = DoublePrecision;
    }

    getch(&V);
    expneg = (V.ch == '-');
    if (expneg || V.ch == '+')
      getch(&V);

    if (V.ch < '0' || V.ch > '9')
      *errorcode = syntaxerr;

    ExpValue = 0;
    while (isdigit(V.ch)) {
      if (ExpValue <= ExpLimit)
	ExpValue = ExpValue * 10 + V.ch - '0';
      getch(&V);
    }

    if (expneg)
      DecExp -= ExpValue;
    else
      DecExp += ExpValue;
  }  /* exponent scan */


  /* Now that 'E' or 'D' is passed, we can set the exponent limits.
  */
  initialize(&V);
  
  /*----- scanning is complete; commence conversion -----*/

  if (dpt > 0) {  /* conversion of non-zero string */
    inthead = 1;

    while (DecExp < dpt && V.digits[dpt] == 0)
	  /* if a fraction part exists */
	    dpt--;
    /* then delete trailing zeroes */

    if (DecExp > 0) {  /* convert integer portion */
      if (DecExp > V.MaxDecExp) {  /* obvious exponent overflow */
	*errorcode = overflowerr;
	DecExp = V.MaxDecExp;
	V.digits[1] = '9';
      }

      while (DecExp > dpt) {  /* append trailing zeroes */
	dpt++;
	V.digits[dpt] = 0;
      }  /* append trailing zeroes */

      inttail = DecExp;
      V.frachead = DecExp + 1;
      V.fractail = dpt;

      /* perform the integer conversion */

      for (i = inthead; i <= inttail - 1; i++) {
	V.carry = V.digits[i+1];

	for (j = i; j >= inthead; j--) {
	  V.product = V.digits[j] * decbase + V.carry;
	  V.digits[j+1] = V.product & (binbase - 1);
	  V.carry = V.product / binbase;
	}  /* for j */

	if (V.carry == 0)
	  inthead++;
	else
	  V.digits[inthead] = V.carry;
      }  /* for i */

      BinExp = (inttail - inthead + 1) * bitsperbyte;

    }  /* convert integer portion */


    else {
      if (DecExp < V.MinDecExp) {  /* obvious exponent underflow */
	*errorcode = underflowerr;
	goto _L1;
      }

      V.frachead = 1;
      V.fractail = dpt;
      BinExp = bitsperbyte;

      while (DecExp <= 0) {  /* fraction scaling */
	/* It may not be necessary for all of the decimal fraction digits
	to take part in the conversion -- the exact number of decimal
	digits needed is equivalent to the number of bits in the binary
	result INCLUDING leading zero bits (plus a few for rounding).
	Rather than multiply the decimal exponent by log(2)10 (3.3219...)
	to compute leading binary zeroes, a simpler approximation of 3 3/8
	(3.375) is used, taking care to avoid overflow on 16 bit hosts, even
	when developing extended format reals with 15 bit exponent values.
	*/

	NeedBits = -DecExp - DecExp - DecExp;   /* 3 * abs(DecExp) */

	GetFractionByte(NeedBits / 8 + NeedBits + V.realbits + 3, &V);

	BinExp -= bitsperbyte;   /* adjust binary exponent */

	while (DecExp != 0 && V.carry != 0) {
	  V.frachead--;
	  V.digits[V.frachead] = V.carry % decbase;
	  V.carry /= decbase;
	  DecExp++;
	}

	if (V.carry != 0)   /* force termination of scaling */
	  DecExp++;
      }  /* fraction scaling */


      /* store first converted binary byte in low order end of buffer */

      V.digits[1] = V.carry;
      inttail = 1;
    }
    /* DecExp <= 0 */
    /* the value has no integer part */

    /* DecExp <= 0 */
    
    /* The number now has at least one byte of converted binary integer.
       Truncate the binary integer if there are excess bytes, or call
       GetFractionBytes for additional bytes if there are too few.  Also,
       count the number of significant bits in the high order byte.
    */
    ZeroBits = bitsperbyte;   /* number of leading zero bits */
    temp = V.digits[inthead];   /* the high order byte */

    do {
      ZeroBits--;
      temp /= 2;
    } while (temp != 0);

    BinExp -= ZeroBits;
    /* BinExp is now the correct unbiased binary exponent */

    if (inttail - inthead >= V.realbytes) {  /* truncate excess bytes */
      inttail = inthead + V.realbytes;
      V.frachead = inttail + 1;
    }  /* truncate excess bytes */

    else {
      NeedBits = (V.realbytes - inttail + inthead - 1) * bitsperbyte + ZeroBits + 1;
      do {
	GetFractionByte(NeedBits, &V);
	inttail++;
	V.digits[inttail] = V.carry;
	NeedBits -= bitsperbyte;
      } while (NeedBits > 0);
    }
    /* inttail - inthead < realbytes */
    /* generate additional bytes */
    /* generate additional bytes */

    while (!V.StickyBit && V.frachead <= V.fractail) {
      if (V.digits[V.fractail] == 0)
	V.fractail--;
      else
	V.StickyBit = true;
    }

    /* the binary significand is now a (realbytes + 1) byte string
       starting at digits[inthead] and ending at digits[inttail].
       "StickyBit" is true if the conversion is inexact thus far.
    */

    /*-------- normalize or denormalize --------*/

    DenormBits = 0;
    if (BinExp <= V.MinBinExp) {
      *errorcode = underflowerr;
      DenormBits = V.MinBinExp - BinExp;
      BinExp = V.MinBinExp;
      impliedbit = 0;

      if (!V.denormalizing) {
	FORLIM = inthead + V.realbytes;
	for (i = inthead; i <= FORLIM; i++)
	  V.digits[i] = 0;
	goto _L1;
      }
    }

    /* compute bit offset multiplier */

    shifter = (V.realbits + ZeroBits - DenormBits) & (bitsperbyte - 1);
    power = 1;
    for (i = 1; i <= shifter; i++)
      power += power;

    /* compute byte offset index */

    temp = bitsperbyte - ((V.realbits - 1) & (bitsperbyte - 1)) - 1;
    i = inttail - (DenormBits + temp) / bitsperbyte;

    /* test the need for an extra right shift */

    if (ZeroBits < shifter)
      i--;

    j = i;

    /* scan any bytes being discarded from tail end */

    while (j < inttail) {
      j++;
      if (V.digits[j] != 0)
	V.StickyBit = true;
    }

    /* simultaneously shift bits left and bytes right */

    V.carry = 0;
    while (i >= inthead) {
      shifter = V.digits[i] * power + V.carry;
      V.digits[j] = shifter & (binbase - 1);
      V.carry = shifter / binbase;
      i--;
      j--;
    }

    /* flush out remainder of high order, if any */

    while (j >= inthead) {
      V.digits[j] = V.carry;
      V.carry = 0;
      j--;
    }

    /*-------- test for rounding --------*/

    RoundBit = (V.digits[inttail] >= binbase / 2);

    if (!V.StickyBit)
      V.StickyBit = (V.digits[inttail] % (binbase / 2) != 0);

    Inexact = (RoundBit || V.StickyBit);

    switch (rounding) {

    case ToNearest:
      RoundUp = (RoundBit && (V.StickyBit || (V.digits[inttail-1] & 1)));
      break;

    case ToZero:
      RoundUp = false;
      break;

    case ToPosInf:
      RoundUp = (!negative && Inexact);
      break;

    case ToNegInf:
      RoundUp = (negative && Inexact);
      break;

    }/* case (rounding) */

    /*-------- apply rounding --------*/

    if (RoundUp) {
      V.carry = 1;
      i = inttail - 1;

      while (V.carry != 0 && i > inthead) {
	if (V.digits[i] == binbase - 1)
	  V.digits[i] = 0;
	else {
	  V.digits[i]++;
	  V.carry = 0;
	}
	i--;
      }

      if (V.carry != 0) {  /* round up high order byte */
	temp = 0;
	FORLIM = ((V.realbits - 1) & (bitsperbyte - 1)) + 1;
	for (i = 1; i <= FORLIM; i++)
	  temp += temp + 1;
	if (V.digits[inthead] == temp) {
	  V.digits[inthead] = temp / 2 + 1;
	  BinExp++;
	} else {
	  V.digits[inthead]++;
	  V.carry = 0;
	}
      }  /* round up high order byte */

    }  /* rounding */

    /*-------- test for exponent range error --------*/

    if (BinExp - V.pointoffset > V.MaxBinExp) {
      *errorcode = overflowerr;
      BinExp = V.MaxBinExp;
      if (V.format == IEEEformat || V.format == INTELformat) {
	BinExp++;
	temp = 0;
      } else
	temp = maxbyte;
      FORLIM = inthead + V.realbytes;
      for (i = inthead; i <= FORLIM; i++)
	V.digits[i] = temp;
      goto _L1;
    }

    /*-------- packing --------*/

    shifter = BinExp + V.ExpBias - V.pointoffset - impliedbit;

    FORLIM = V.exponoffset;
    for (i = 1; i <= FORLIM; i++)
      shifter += shifter;
    /* shift
       exponent left */

    V.value[0] = shifter + V.digits[inthead];

    j = inthead;

    FORLIM = V.realwords;
    for (i = 1; i <= FORLIM - 1; i++) {
      j += 2;
      V.value[i] = V.digits[j-1] * binbase + V.digits[j];
    }

  }  /*non-zero value */

  /*---- append sign and deliver result ----*/

_L1:
  if (negative)
    V.value[0] += halfwordsize;

  if (!V.reversewds) {
    FORLIM = V.realwords;
    for (i = 0; i <= FORLIM - 1; i++)
      result[i] = V.value[i];
    return;
  }

  j = V.realwords;
  FORLIM = V.realwords;
  for (i = 0; i <= FORLIM - 1; i++) {
    result[i] = V.value[j-1];
    j--;
  }
}  /* p2ReadReal */

#undef MaxInBuf
#undef decbase
#undef binbase
#undef maxproduct
#undef MaxExpon
#undef ExpLimit



/* End. */
