{TEST 6.6.6.2-9, CLASS=QUALITY}

{: This test checks the implementation of the sin and cos
   functions. }
{  For FORTRAN version, see 'Software Manual for the Elementary
   Functions', Prentice-Hall 1980, W.J.Cody and W.Waite pp144-149.
   Failure indicates the implementation is worse than that given
   by Cody and Waite, but exceptional argument values could
   produce a large maximum relative error without indicating a
   numerically poor routine. }
{V3.1: Machar changed and forcestore calls added. }

program t6p6p6p2d9(output);

var


{     data required

         none

      other subprograms in this package

         machar -  as for 6.6.6.2-6
         random -  as for 6.6.6.2-6


      standard subprograms required

         abs, ln, exp, cos, sin, sqrt
                                                                      }

   i, ibeta, iexp, irnd, it, i1, j, k1, k2, k3, machep,
   maxexp, minexp, n, negep, ngrd: integer;
   ix: 1 .. 30268;   iy: 1 .. 30306;   iz: 1 .. 30322;
   a, ait, albeta, b, beta, betap,
   c, del, eps, epsneg, expon, one, ran,
   r6, r7, three, w, x, xl, xmax, xmin, xn, x1, y, z, zero, zz: real;
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
   end;  { printtestrun }

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
   zero := 0.0;
   three := 3.0;
   a := zero;
   b := 1.570796327;
   c := b;
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
         y := x / three;
         y := forcestore(x + y) - x;
         x := three * y;
         if j = 3 then
            begin
            z := cos(x);
            zz := cos(y);
            w := one;
            if z <> zero then
               w := (z + zz * (three - 4.0 * zz * zz) ) / z
            end
         else
            begin
            z := sin(x);
            zz := sin(y);
            w := one;
            if z <> zero then
               w := (z - zz * (three - 4.0 * zz * zz) ) / z
            end;
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
         r7 := r7 + w * w;
         xl := xl + del
         end;

      k2 := n - k1 - k3;
      r7 := sqrt(r7 / xn);
      if j = 3 then
         begin
         writeln(' TEST OF COS(X) VS 4*COS(X/3)**3-3*COS(X/3)');
         writeln
         end
      else
         begin
         writeln(' TEST OF SIN(X) VS 3*SIN(X/3)-4*SIN(X/3)**3');
         writeln
         end;
      printtestrun(n, a, b, k1, k2, k3, it, ibeta, r6, x1, r7);
      a := 18.84955592;
      if j = 2 then
         a := b + c;
      b := a + c
      end;

   {   special tests   }

   c := one / exp( ( it div 2 ) * ln(beta) );
   z := ( sin(a + c) - sin(a - c) ) / (c + c);
   write(' IF ', z,' IS NOT ALMOST 1.0 THEN SIN HAS THE WRONG ');
   writeln('PERIOD');
   writeln;

   writeln(' THE IDENTITY SIN(-X) = -SIN(X) WILL BE TESTED.');
   writeln;
   writeln('        X         F(X) + F(-X)');
   writeln;

   for i := 1 to 5 do
      begin
      x := random * a;
      z := sin(x) + sin( - x);
      writeln(' ',x,z)
      end;

   writeln;
   writeln(' THE IDENTITY SIN(X) = X, X SMALL, WILL BE TESTED.');
   writeln;
   writeln('        X           X - F(X)');
   writeln;
   betap := exp( it * ln(beta) );
   x := random / betap;

   for i := 1 to 5 do
      begin
      z := x - sin(x);
      writeln(' ',x, z);
      x := x / beta
      end;
   writeln;

   writeln(' THE IDENTITY COS(-X) = COS(X) WILL BE TESTED.');
   writeln;
   writeln('        X         F(X) - F(-X)');
   writeln;

   for i := 1 to 5 do
      begin
      x := random * a;
      z := cos(x) - cos( - x);
      writeln(' ',x, z)
      end;
   writeln;

   writeln(' TEST OF UNDERFLOW FOR VERY SMALL ARGUMENTS');
   writeln;
   expon := minexp * 0.75;
   x := exp( expon * ln(beta) );
   y := sin(x);
   writeln('     SIN(', x, ') = ', y);
   writeln;
   writeln(' THE FOLLOWING THREE LINES ILLUSTRATE THE LOSS IN');
   writeln(' SIGNIFICANCE FOR LARGE ARGUMENTS. THE ARGUMENTS');
   writeln(' USED ARE CONSECUTIVE.');
   writeln;
   z := sqrt(betap);
   x := z * (one - epsneg );
   y := sin(x);
   writeln('     SIN(', x, ') = ', y);
   writeln;
   y := sin(z);
   writeln('     SIN(', z, ') = ', y);
   writeln;
   x := z * (one + eps );
   y := sin(x);
   writeln('     SIN(', x, ') = ', y);
   writeln;

{ Test of error returns deleted since action not clear from Standard}

   if failed then
      writeln(' FAIL...6.6.6.2-9')
   else
      writeln(' QUALITY...6.6.6.2-9')
end.
