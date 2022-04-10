{TEST 6.6.6.2-11, CLASS=IMPLEMENTATIONDEFINED, NUMBER= 2}

{: This program determines some of the characteristics of the
   floating-point arithmetic system of the host machine. }
{  If the program fails or the printed results do not agree
   with the known data for the machine then the program
   should be checked because some of the assumptions made
   about floating-point arithmetic may be invalid for that
   machine. In particular, underflow must not be an error. }
{V3.1: Updated to take into account IEEE standard. }

program t6p6p6p2d11(output);

{  If the results from this test are not in conformity with
   the known data for the implementation,  then the quality tests
   using MACHAR will not obtain the correct results.
   The tests using MACHAR are 6.1.5-11, 6.1.5-12,
   6.6.6.2-6 to 6.6.6.2-10, 6.6.6.2-11 (this test),
   6.7.2.2-14, 6.7.2.2-15, 6.9.1-6, 6.9.1-8 and 6.9.3.5.2-2.
   The exponent range may not agree with the machine manual due to
   the definition of minexp and maxexp, see below.
   The reasons why MACHAR does not achieve the correct results
   should be communicated to the suppliers of the suite. }

var

   eps , epsneg , xmax , xmin : real;

   ibeta , iexp , irnd , it , machep , maxexp , minexp , negep , ngrd :
   integer;

procedure machar (var ibeta , it , irnd , ngrd , machep , negep , iexp,
  minexp , maxexp : integer; var eps , epsneg , xmin , xmax : real );

var

{ For FORTRAN version, see 'Software Manual for the Elementary
  Functions' W J Cody and W Waite, Prentice-Hall 1980, pp259-264 }

{     This subroutine is intended to determine the characteristics
      of the floating-point arithmetic system that are specified
      below.  The first three are determined according to an
      algorithm due to M. Malcolm, CACM 15 (1972), pp. 949-951,
      incorporating some, but not all, of the improvements
      suggested by M. Gentleman and S. Marovich, CACM 17 (1974),
      pp. 276-277.

      Latest revision - 1 July, 1982.

      Author - W. J. Cody
               Argonne National Laboratory

      Revised for Pascal - R. A. Freak
                           University of Tasmania
                           Hobart
                           Tasmania
                     and
                           B. A. Wichmann
                           National Physical Laboratory
                           Teddington Middx.
                           TW11 OLW  UK

      This revision for Pascal uses an extra function st to
      ensure that a machine with an overlength accumulator will
      give the correct result (ie that for stored values, not
      that for the accumulator).
      The July 1982 revision ensures the correct value for maxexp
      on IEEE implementations (both single and double), and also
      uses a different value so that round to even is not reported
      as chopping.

      ibeta    -  The radix of the floating-point representation
      it       -  The number of base ibeta digits in the floating-point
                  significand
      irnd     -  0 if floating-point addition chops,
                  1 if floating-point addition rounds
                                 (or rounds to even)
      ngrd     -  The number of guard digits for multiplication. It is
                  0 if  irnd=1, or if  irnd=0  and only  it  base ibeta
                    digits participate in the post normalization shift
                    of the floating-point significand in multiplication
                  1 if  irnd=0  and more than  it  base  ibeta  digits
                    participate in the post normalization shift of the
                    floating-point significand in multiplication
      machep   -  The largest negative integer such that
                  1.0 + ibeta ** machep <> 1.0, except that
                  machep is bounded below by -(it+3)
      negep    -  The largest negative integer such that
                  1.0 - ibeta ** negep <> 1.0, except that
                  negep is bounded below by -(it+3)
      iexp     -  The number of bits (decimal places if ibeta = 10)
                  reserved for the representation of the exponent
                  (including the bias or sign) of a floating-point
                  number
      minexp   -  The largest in magnitude negative integer such that
                  ibeta ** minexp is a positive floating-point
                  number, still having it digits.
      maxexp   -  The largest positive integer exponent for a finite
                  floating-point number
      eps      -  The smallest positive floating-point number such
                  that  1.0+eps <> 1.0. In particular, if either
                  ibeta = 2 or irnd = 0, eps = ibeta ** machep
                  otherwise, eps = (ibeta ** machep)/2
      epsneg   -  A small positive floating-point number such that
                  1.0-epsneg <> 1.0. In particular, if ibeta = 2
                  or irnd = 0, epsneg = ibeta ** negep.
                  otherwise, epsneg = (ibeta**negep)/2. Because
                  negep is bounded below by -(it+3), epsneg may not
                  be the smallest number which can alter 1.0 by
                  subtraction.
      xmin     -  The smallest non-vanishing floating-point power of
                  the radix. In particular,  xmin = ibeta ** minexp
      xmax     -  The largest finite floating-point number.  In
                  particular   xmax = (1.0-epsneg) * ibeta ** maxexp
                  Note - on some machines  xmax  will be only the
                  second, or perhaps third, largest number, being
                  too small by 1 or 2 units in the last digit of
                  the significand.   }


   i , iz , j , k , mx : integer;
   a , b , beta , betain , betam1 , one , y , z , zero : real;
   underflo : boolean;

   function st( x: real) : real;
      { This function is the identity written so that an
        overlength accumulator will not stop the algorithm
        of Cody from giving the correct result. In principle,
        this function needs to be made complex enough to
        defeat an optimizing compiler. }
      var
         y: array[ 1 .. 3 ] of real;
      begin
      y[1] := x;
      y[2] := 0.0;
      y[3] := y[1] + y[2];
      y[1] := y[3];
      st := y[1] + y[2]
      end;  {st}

begin
   one := 1.0;
   zero := 0.0;

   {   determine ibeta,beta ala Malcolm   }

   a := one + one;
   while st(st( st(a + one) - a) - one) = zero do
      a := a + a;
   b := one + one;
   while st(st(a + b) - a) = zero do
      b := b + b;
   ibeta := trunc ( st(a + b) - a);
   beta := ibeta;

   {   determine it,irnd   }

   it := 0;
   b := one;
   repeat begin
      it := it + 1;
      b := b * beta;
   end until st(st( st(b + one) - b) - one) <> zero;
   irnd := 0;
   betam1 := beta - one;
   if st(st((a + beta) + betam1) - (a + beta)) <> zero then
      irnd := 1;

   {   determine negep, epsneg   }

   negep := it + 3;
   betain := one/beta;
   a := one;

   for i := 1 to negep do
      a := a * betain;

   b := a;
   while st(st(one - a) - one) = zero do
      begin
      a := a * beta;
      negep := negep - 1;
      end;
   negep := - negep;
   epsneg := a;
   if (ibeta <> 2) and (irnd <> 0) then
      begin
      a := a * st(one + a)/(one + one);
      if st(st(one - a) - one) <> zero then
         epsneg := a;
      end;

   {   determine machep, eps   }

   machep := - it - 3;
   a := b;
   while st(st(one + a) - one) = zero do
      begin
      a := a * beta;
      machep := machep + 1;
      end;
   eps := a;
   if (ibeta <> 2) and (irnd <> 0) then
      begin
      a := a * st(one + a) / (one + one);
      if st(st(one + a) - one) <> zero then
         eps := a;
      end;

   {   determine ngrd   }

   ngrd := 0;
   if (irnd = 0) and ( st( st(one + eps) * one - one) <> zero) then
      ngrd := 1;

   {  determine iexp, minexp, xmin

      loop to determine largest i and k = 2**i such that
          (1/beta) ** (2**(i))
      does not underflow
      exit from loop is signaled by an underflow   }

   i := 0;
   k := 1;
   z := betain;
   underflo := false;
   repeat begin
      y := z;
      z := y * y;

      {   check for underflow   }

      a := z * one;
      if ( st(a + a) = zero) or (abs(z) >= y) then
         underflo := true
      else
         begin
         i := i + 1;
         k := k + k;
         end;
   end until underflo;
   if ibeta <> 10 then
      begin
      iexp := i + 1;
      mx := k + k;
      end
   else
      begin

      {  for decimal machines only   }
      iexp := 2;
      iz := ibeta;
      while k >= iz do
         begin
         iz := iz * ibeta;
         iexp := iexp + 1;
         end;
      mx := iz + iz - 1;
      end;
   underflo := false;
   repeat begin

      {   loop to determine minexp, xmin
          exit from loop is signalled by an underflow    }

      xmin := y;
      y := y * betain;
      { check for underflow here }
      a := y * one;
      if ( st(a + a) = zero) or (abs(y) >= xmin) or
         (st(y*st(one+eps)) <= y) then
         underflo := true
      else
         k := k + 1;
   end until underflo;
   minexp := - k;

   {  determine maxexp, xmax   }

   if (mx <= k + k - 3) and (ibeta <> 10) then
      begin
      mx := mx + mx;
      iexp := iexp + 1;
      end;
   maxexp := mx + minexp;
   {  adjust for machines with implicit leading
      bit in binary significand and machines with
      radix point at extreme right of significand   }

   i := maxexp + minexp;
   if ibeta = 2 then
      begin
      if (iexp=8) and (it=24) and (i=4) then
         maxexp := maxexp - 2  { IEEE single length }
      else if (iexp=11) and (it=53) and (i=4) then
         maxexp := maxexp - 2  { IEEE double length }
      else if i=0 then
         maxexp := maxexp - 1;
      end;
   if i > 20 then
      maxexp := maxexp - 1;
   if a <> y then
      maxexp := maxexp - 2;
   xmax := one - epsneg;
   if st(xmax * one) <> xmax then
      xmax := one - st(beta * epsneg);
   xmax := xmax / (beta * beta * beta * xmin);
   i := maxexp + minexp + 3;
   for j := 1 to i do
      begin
      if ibeta = 2 then
         xmax := xmax + xmax
      else
         xmax := xmax * beta;
      end;

end;   {machar}



begin
   machar ( ibeta , it , irnd , ngrd , machep , negep , iexp , minexp ,
      maxexp , eps , epsneg , xmin , xmax );
   writeln(' OUTPUT FROM TEST...6.6.6.2-11');
   writeln('   BETA =',ibeta:5);
   writeln('      T =',it:5);
   writeln('    RND =',irnd:5);
   writeln('   NGRD =',ngrd:5);
   writeln(' MACHEP =',machep:5);
   writeln('  NEGEP =',negep:5);
   writeln('   IEXP =',iexp:5);
   writeln(' MINEXP =',minexp:5);
   writeln(' MAXEXP =',maxexp:5);
   writeln('    EPS =',eps);
   writeln(' EPSNEG =',epsneg);
   writeln('   XMIN =',xmin);
   writeln('   XMAX =',xmax);
   writeln(' IMPLEMENTATION DEFINED...6.6.6.2-11');

end.
