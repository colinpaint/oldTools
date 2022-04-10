{TEST 6.6.6.2-8, CLASS=QUALITY}

{: This test checks the implementation of the exp function. }
{  For FORTRAN version, see 'Software Manual for the Elementary
   Functions', Prentice-Hall 1980, W.J.Cody and W.Waite pp79-83.
   Failure indicates the implementation is worse than that given
   by Cody and Waite, but exceptional argument values could
   produce a large maximum relative error without indicating a
   numerically poor routine. }
{V3.1: Machar changed and forcestore calls added. }

program t6p6p6p2d8(output);

var


{     data required

         none

      other subprograms in this package

         machar -  as for 6.6.6.2-6
         random -  as for 6.6.6.2-6


      standard subprograms required

         abs, ln, exp, sqrt
                                                                      }

   i, ibeta, iexp, irnd, it, i1, j, k1, k2, k3, machep,
   maxexp, minexp, n, negep, ngrd: integer;
   ix: 1 .. 30268;   iy: 1 .. 30306;   iz: 1 .. 30322;
   a, ait, albeta, b, beta, d, del,
   eps, epsneg, one, ran, r6, r7, two, ten,
   v, w, x, xl, xmax, xmin, xn, x1, y, z, zero, zz: real;
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


   { For details, see test 6.6.6.2-6   }

   var
      ni, k, r: integer;
      x: real;
   begin
   k := ix div 177;
   r := ix - k * 177;
   ni := - k - k + 171 * r;
   if ni < 0 then
      ix := ni + 30269
   else
      ix := ni;
   k := iy div 176;
   r := iy - k * 176;
   ni := - 35 * k + r * 172;
   if ni < 0 then
      iy := ni + 30307
   else
      iy := ni;
   k := iz div 178;
   r := iz - k * 178;
   ni := - 63 * k + r * 170;
   if ni < 0 then
      iz := ni + 30323
   else
      iz := ni;
   x := ix/30269.0 + iy/30307.0 + iz/30323.0;
   random := x - trunc(x)
   end  {random} ;


procedure printtestrun (n: integer; lb, ub: real;
                        big, equal, small: integer;
                        rdigits, radix: integer;
                        maxerror, xmaxerror, rmserror: real);
var
   loss: real;  { Limit for loss in accuracy, see test 6.6.6.2-6 }
begin
   loss := 4.0 * (1.0 + ln(4.0)/albeta) / 3.0;
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
   iz := 1;
   iy := 10001;
   ix := 4987;
   machar ( ibeta, it, irnd, ngrd, machep, negep, iexp, minexp,
      maxexp, eps, epsneg, xmin, xmax );
   failed := false;
   beta := ibeta;
   albeta := ln(beta);
   ait := it;
   one := 1.0;
   two := 2.0;
   ten := 10.0;
   zero := 0.0;
   v := 0.0625;
   a := two;
   b := ln(a) * 0.5;
   a := - b + v;
   d := ln(0.9 * xmax);
   n := 2000;
   xn := n;
   i1 := 0;

   {   random argument accuracy tests  }

   for j := 1 to 3 do
      begin
      k1 := 0;
      k3 := 0;
      x1 := zero;
      r6 := zero;
      r7 := zero;
      del := (b - a) / xn;
      xl := a;

      for i := 1 to n do
         begin
         x := del * random + xl;

         {   purify agruments   }

         y :=  forcestore(x - v);
         if y < zero then
            x :=  forcestore(y + v);
         z := exp(x);
         zz := exp(y);
         if j = 1 then
            z := z - z * 6.058693718652421388E-2
         else
            begin
            if ibeta = 10 then
               z := z * 6.0E-2 + z * 5.466789530794296106E-5
            else
               z := z * 0.0625 - z * 2.4453321046920570389E-3
            end;
         w := one;
         if zz <> zero then
            w := (z - zz) / zz;
         if w < zero then
            k1 := k1 + 1;
         if w > zero then
            k3 := k3 + 1;
         w := abs(w);
         if w > r6 then
            begin
            r6 := w;
            x1 := x
            end;
         r7 := r7 + w * w;
         xl := xl + del
         end;

      k2 := n - k3 - k1;
      r7 := sqrt(r7 / xn);
      writeln(' TEST OF EXP(X-', v:7:4, ') VS EXP(X)/EXP(', v:7:4, ')');
      writeln;
      printtestrun(n, a, b, k1, k2, k3, it, ibeta, r6, x1, r7);
      if j = 2 then
         begin
         a := - two * a;
         b := ten * a;
         if b < d then
            b := d
         end
      else
         begin
         v := 45.0 / 16.0;
         a := - ten * b;
         b := 4.0 * xmin * exp(it * ln(beta) );
         b := ln(b)
         end
      end;

   {   special tests   }

   writeln(' THE IDENTITY EXP(X) * EXP(-X) - 1.0 WILL BE TESTED.');
   writeln;
   writeln('        X        F(X)*F(-X) - 1');
   writeln;

   for i := 1 to 5 do
      begin
      x := random * beta;
      y := - x;
      z := exp(x) * exp(y) - one;
      writeln(' ',x, z)
      end;
   writeln;
   writeln(' TEST OF SPECIAL ARGUMENTS');
   writeln;
   x := zero;
   y := exp(x) - one;
   writeln(' EXP(0.0) - 1.0 = ', y);
   writeln;
   x := trunc( ln(xmin) );
   y := exp(x);
   writeln(' EXP(', x, ') = ', y);
   writeln;
   x := trunc( ln(xmax) - 0.5 );
   y := exp(x);
   writeln(' EXP(', x, ') = ', y);
   writeln;
   x := x / two;
   v := x / two;
   y := exp(x);
   z := exp(v);
   z := z * z;
   writeln(' IF EXP(', x, ') = ', y, ' IS NOT ABOUT');
   write(' EXP(', v, ')**2 = ', z, ' THERE IS AN ARGUMENT');
   writeln(' REDUCTION ERROR');
   writeln;

{ Test of error returns deleted since action not clear from Standard.
  Error test also deleted. }

   if failed then
      writeln(' FAIL...6.6.6.2-8')
   else
      writeln(' QUALITY...6.6.6.2-8')
end.
