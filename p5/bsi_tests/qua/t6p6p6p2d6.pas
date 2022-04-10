{TEST 6.6.6.2-6, CLASS=QUALITY}

{: This test checks the implementation of the sqrt function. }
{  For FORTRAN version, see 'Software Manual for the Elementary
   Functions', Prentice-Hall 1980, W.J.Cody and W.Waite pp31-34.
   Failure indicates the implementation is worse than that given
   by Cody and Waite, but exceptional argument values could
   produce a large maximum relative error without indicating a
   numerically poor routine. }
{V3.1: Machar changed and forcestore added. }

program t6p6p6p2d6(output);

var

{      data required

          none

       other subprograms in this package

          machar - An environmental inquiry program providing
                   information on the floating-point arithmetic
                   system.  Note that the call to machar can
                   be deleted provided the following six
                   parameters are assigned the values indicated:

                   ibeta    -  The radix of the floating-point
                               representation
                   it       -  The number of base ibeta digits in the
                               floating-point significand
                   eps      -  The smallest positive floating-point
                               number such that 1.0+eps <> 1.0 . In
                               particular, if either ibeta=2 or irnd=0,
                               eps = ibeta ** machep, otherwise,
                               eps = (ibeta  **  machep)/2
                   epsneg   -  A small positive floating-point number
                               such that 1.0-epsneg <> 1.0 . In
                               particular, if ibeta=2 or irnd=0,
                               epsneg = ibeta ** negeps,
                               otherwise, epsneg = (ibeta ** negeps)/2 .
                               Because negeps is bounded below
                               by -(it+3), epsneg may not be the
                               smallest number which can alter
                               1.0 by subtraction.
                   xmin     -  The smallest non-vanishing floating-point
                               power of the radix. In particular,
                               xmin = ibeta ** minexp .
                   xmax     -  The largest finite floating-point number.
                               In particular,
                               xmax = (1.0-epsneg)*ibeta ** maxexp .
                               Note - on some machines, xmax will
                               be only the second, or perhaps third,
                               largest number, being too small by
                               1 or 2 units in the last digit of
                               the significand.

        randl(x) - A function subprogram returning logarithmically
                   distributed random real numbers.  In particular,
                          a * randl(ln(b/a))
                   is logarithmically distributed over (a,b)

          random - A function subprogram returning random real
                   numbers uniformly distributed over (0,1)


       standard subprograms required

           abs, ln, exp, sqrt
                                                                      }

   i, ibeta, iexp,  irnd, it, j, k1, k2, k3, machep, maxexp,
   minexp, n, negep, ngrd : integer;
   ix: 1 .. 30268;   iy: 1 .. 30306;   iz: 1 .. 30322;
   { Seeds for the function random which must be initialised.
     They must be > 0 and less than 30269, 30307 and 30323
     respectively. They should not be equal. }
   a, ait, albeta, b, beta, c, eps, epsneg, one, r6, r7, sqbeta, w,
   x, xmax, xmin, xn, x1, y, z, zero: real;
   failed: boolean;

function forcestore(x: real): real;
   { see 'st' in 6.6.6.2-11 for details}
   var
      y: array[1..3] of real;
   begin
   y[1] := x; y[2] := 0.0; y[3] := y[1] + y[2];
   y[1] := y[3]; forcestore := y[1] + y[2]
   end;

procedure machar (var ibeta, it, irnd, ngrd, machep, negep, iexp,
      minexp, maxexp: integer; var eps, epsneg, xmin, xmax: real);
   { see 6.6.6.2-11 for details }
   var
      i, iz, j, k, mx: integer;
      a, b, beta, betain, betam1, one, y, z, zero: real;
      underflo: boolean;
   function st(x: real): real;
      begin
      st := forcestore(x);
      end;

   begin
   one := 1.0; zero := 0.0; a := one + one;
   while st(st(st(a + one) - a) - one) = zero do
      a := a + a;
   b := one + one;
   while st(st(a + b) - a) = zero do
      b := b + b;
   ibeta := trunc (st(a + b) - a); beta := ibeta;
   it := 0; b := one;
   repeat
      begin it := it + 1; b := b * beta end
   until st(st(st(b + one) - b) - one) <> zero;
   irnd := 0;
   betam1 := beta - one;
   if st(st((a + beta) + betam1) - (a + beta)) <> zero then
      irnd := 1;
   negep := it + 3; betain := one / beta; a := one;
   for i := 1 to negep do
      a := a * betain;
   b := a;
   while st(st(one - a) - one) = zero do
      begin a := a * beta; negep := negep - 1 end;
   negep := - negep; epsneg := a;
   if (ibeta <> 2) and (irnd <> 0) then
      begin
      a := a * st(one + a) / (one + one);
      if st(st(one - a) - one) <> zero then
         epsneg := a;
      end;
   machep := - it - 3; a := b;
   while st(st(one + a) - one) = zero do
      begin a := a * beta; machep := machep + 1 end;
   eps := a;
   if (ibeta <> 2) and (irnd <> 0) then
      begin
      a := a * st(one + a) / (one + one);
      if st(st(one + a) - one) <> zero then
         eps := a;
      end;
   ngrd := 0;
   if (irnd = 0) and (st(st(one + eps) * one - one) <> zero) then
      ngrd := 1;
   i := 0; k := 1; z := betain; underflo := false;
   repeat
      begin
      y := z; z := y * y; a := z * one;
      if (st(a + a) = zero) or (abs (z) >= y) then
         underflo := true
      else
         begin i := i + 1; k := k + k end;
      end
   until underflo;
   if ibeta <> 10 then
      begin iexp := i + 1; mx := k + k end
   else
      begin iexp := 2; iz := ibeta;
      while k >= iz do
         begin iz := iz * ibeta; iexp := iexp + 1 end;
      mx := iz + iz - 1;
      end;
   underflo := false;
   repeat
      begin
      xmin := y; y := y * betain; a := y * one;
      if (st(a + a) = zero) or (abs (y) >= xmin)
            or (st(y * st(one + eps)) <= y) then
         underflo := true
      else
         k := k + 1;
      end
   until underflo;
   minexp := - k;
   if (mx <= k + k - 3) and (ibeta <> 10) then
      begin mx := mx + mx; iexp := iexp + 1 end;
   maxexp := mx + minexp; i := maxexp + minexp;
   if ibeta = 2 then
      if (iexp = 8) and (it = 24) and (i = 4) then
         maxexp := maxexp - 2
      else if (iexp = 11) and (it = 53) and (i = 4) then
         maxexp := maxexp - 2
      else if i = 0 then
         maxexp := maxexp - 1;
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
      if ibeta = 2 then
         xmax := xmax + xmax
      else
         xmax := xmax * beta;
   end;






function random: real;

   { I D Hill and B A Wichmann, Applied Statistics,
     Vol 31, 1982, pp 188-190. }

   { The tests using random are: 6.4.3.5-5, 6.4.3.5-8, 6.6.6.2-6,
     6.6.6.2-7, 6.6.6.2-8, 6.6.6.2-9 and 6.6.6.2-10. }

   { This function uses three multiplicative congruence
     generators to provide approximately 48-bit random
     sequences from three 16-bit integer ones. The three
     sequences are:
           ix := (ix * 171) mod 30269
           iy := (iy * 172) mod 30307
     and   iz := (iz * 170) mod 30323
     Since 30269, 30307 and 30323 are primes, all sequences can be
     of maximal length (see Seminumerical Algorithms, D E Knuth,
     Addison Wesley 1969, p19). The simple steps above cannot
     be performed without overflow on a 16-bit machine. This
     is avoided by writing:
           iy = k * 176 + r
     where    0 <= k <= 172
     and      0 <= r <= 175
     Then     172 * iy = k * 176 * 172 + r * 172
                       = k * 30272 + r * 172
                       = - k * 35 + r * 172 mod 30307
     Similarly
     with     iz = k * 178 + r
              170 * iz = - k * 63 + r * 170 mod 30323.
     and with ix = k * 177 + r
              171 * ix = - k * 2 + r * 171 mod 30269
     The values are now bounded for a 16-bit machine.
     The period is about 2.78E13.
     The fractional part of the sum of the three values as a
     fraction of the prime modulus gives the real random value. }

   var
      ni, k, r: integer;
      x: real;
   begin
   { calculate k and r for ix }
   k := ix div 177;
   r := ix - k * 177;
   ni := - k - k + 171 * r;
   { -342 <= ni <= 30096, so now reduce range }
   if ni < 0 then
      ix := ni + 30269
   else
      ix := ni;
   { k and r for iy generator }
   k := iy div 176;
   r := iy - k * 176;
   ni := - 35 * k + r * 172;
   { reduce range, -6020 <= ni <= 30100 }
   if ni < 0 then
      iy := ni + 30307
   else
      iy := ni;
   { now the same for iz }
   k := iz div 178;
   r := iz - k * 178;
   ni := - 63 * k + r * 170;
   { reduce range, -10710 <= ni <= 30090 }
   if ni < 0 then
      iz := ni + 30323
   else
      iz := ni;
   x := ix/30269.0 + iy/30307.0 + iz/30323.0;
   random := x - trunc(x)
   end  {random} ;


function randl (x: real ): real;

{     returns pseudo random numbers logarithmically distributed
      over (1,exp(x)).  thus a*randl(ln(b/a)) is logarithmically
      distributed in (a,b).

      other subroutines required

         exp(x) - the exponential routine

         random - a function program returning random real
                  numbers uniformly distributed over (0,1).
                                                                  }


begin
   randl := exp ( x * random )
end;


procedure printtestrun (n: integer; lb, ub: real;
                        big, equal, small: integer;
                        rdigits, radix: integer;
                        maxerror, xmaxerror, rmserror: real);
var
   loss: real;  { Limit for loss in accuracy }
begin
   { The limit for loss in accuracy corresponds to 4/3(BASE
     digit plus 2 bits) for the Maximum Relative Error and to
     half this for the Root Mean Square error. Such limits are
     only exceeded by routines which are believed to contain
     numerically poor algorithms except for isolated argument
     values.
     Hence MRE <= 4, RMS <= 2 for a binary machine
       and MRE <= 2, RMS <= 1 for a hexadecimal machine.
     This is an NPL addition to the Cody and Waite tests. }
   loss := 4.0 * (1.0 + ln(4.0)/albeta)/3.0;
   writeln('      RANDOM ARGUMENTS WERE TESTED FROM THE INTERVAL')
      ;
   writeln('   (',lb,',',ub,')');
   writeln;
   writeln('  THE RESULT WAS TOO LARGE',big:5,' TIMES, AND');
   writeln('   EQUAL', equal:5, ' TIMES' );
   writeln('   TOO SMALL',small:5,' TIMES');
   writeln;
   writeln('  THERE ARE', it:4, ' BASE', ibeta:4,
      ' SIGNIFICANT DIGITS IN A FLOATING-POINT NUMBER' );
   if maxerror <> zero then
      w := ln(abs(maxerror))/albeta
   else
      w := -999.0;
   writeln('  THE MAXIMUM RELATIVE ERROR OF',maxerror,'=',
         ibeta:4,' ** ',w:7:2);
   writeln('   OCCURRED FOR X =',xmaxerror);
   if w + ait < zero then
      w := zero
   else
      w := w + ait;
   writeln('   ESTIMATED LOSS OF BASE', ibeta:4,
      ' SIGNIFICANT DIGITS IS', w:7:2);
   if w > loss then
      failed := true;
   if rmserror <> zero then
      w := ln(abs(rmserror))/albeta
   else
      w := -999.0;
   writeln('  ROOT-MEAN-SQUARE RELATIVE ERROR =',rmserror,
         '=',ibeta:4,' ** ',w:7:2);
   if w + ait < zero then
      w := zero
   else
      w := w + ait;
   writeln('   ESTIMATED LOSS OF BASE', ibeta:4,
      ' SIGNIFICANT DIGITS IS', w:7:2);
   if w > 0.5 * loss then
      failed := true;
   writeln
end;   { printtestrun }

begin  {Main program}

   machar ( ibeta, it, irnd, ngrd, machep, negep, iexp, minexp,
      maxexp, eps, epsneg, xmin, xmax );
   failed := false;
   beta := ibeta;
   sqbeta := sqrt(beta);
   albeta := ln(beta);
   ait := it;
   one := 1.0;
   zero := 0.0;
   a := one / sqbeta;
   b := one;
   n := 2000;
   xn := n;
   iz := 1;
   iy := 10001;
   ix := 4987;

   {   random argument accuracy tests   }

   for j := 1 to 2 do
      begin
      c := ln(b / a);
      k1 := 0;
      k3 := 0;
      x1 := zero;
      r6 := zero;
      r7 := zero;

      for i := 1 to n do
         begin
         x := a * randl(c);
         y := forcestore( x * x);
         z := sqrt(y);
         w := (z - x) / x;
         if w > zero then
            k1 := k1 + 1;
         if w < zero then
            k3 := k3 + 1;
         w := abs(w);
         if w > r6 then
            begin
            r6 := w;
            x1 := x
            end;
         r7 := r7 + w * w
         end;

      k2 := n - k1 - k3;
      r7 := sqrt(r7 / xn);
      writeln(' TEST OF SQRT(X*X) - X');
      writeln;
      printtestrun(n, a, b, k1, k2, k3, it, ibeta, r6, x1, r7);
      a := one;
      b := sqbeta
      end;

  {   special tests   }

   writeln(' TEST OF SPECIAL ARGUMENTS');
   writeln('   VALUE    X=', ' ':15, 'SQRT(X)=' );
   writeln('   XMIN   ', xmin, sqrt(xmin));
   writeln('  1-EPSNEG', one-epsneg, sqrt(one-epsneg));
   writeln('   1.0    ', one, sqrt(one));
   writeln('  1+EPS   ', one + eps, sqrt(one + eps));
   writeln('   XMAX   ', xmax, sqrt(xmax));
   writeln('   0.0    ', zero, sqrt(zero));
   writeln;

   {   No tests for error conditions are made here.
      Test 6.6.6.2-5 calls sqrt with a negative argument.  }

   if failed then
      writeln(' FAIL...6.6.6.2-6')
   else
      writeln(' QUALITY...6.6.6.2-6')
end.
