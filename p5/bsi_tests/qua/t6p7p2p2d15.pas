{TEST 6.7.2.2-15, CLASS=QUALITY}

{: This test checks real +, -, *, abs and sqr by requiring
   equality for small integer-valued operands. }
{  The test checks that the operations +, -, *, abs and sqr
   applied to real operands whose values are small integers
   give exact results. To perform these checks, the minimum
   of maxint and the exact integer range of the reals must be
   found (maxr). Then computations with integers and reals
   in the range -maxr .. maxr are checked for equality.
   The correct functioning of trunc is assumed. }
{V3.1: Machar changed. }

program t6p7p2p2d15(output);

type
   op = (add, sub, mul, absr, sqrr, neg, plus);

var
   ibeta, it, irnd, ngrd, machep, negep, iexp, minexp,
   maxexp: integer;  { integer parameters to machar }
   eps, epsneg, xmin, xmax: real; { real parameters to machar }
   i, j, errorcount, maxr: integer;
   rmaxr: real;



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





procedure test(testop: op; op1, op2, result: integer);
   var
      x, y, z: real;
   procedure equal(u, v: real);
      begin
      if u <> v then
         begin
         errorcount := errorcount + 1;
         if errorcount < 10 then
            writeln(' ',ord(testop), x, y)
         end
   end; {equal}
   begin
   x := op1;
   y := op2;
   z := result;
   equal(result, z);
   case testop of
      add: equal(x + y, z);
      sub: equal(x - y, z);
      mul: equal(x * y, z);
      absr: equal( abs(x), z);
      sqrr: equal( sqr(x), z);
      neg: equal( - x, z);
      plus: equal( + x, z)
   end
end; {test}

begin
   machar( ibeta, it, irnd, ngrd, machep, negep, iexp, minexp,
      maxexp, eps, epsneg, xmin, xmax);
   if machep < negep then
      j := - machep
   else
      j := - negep;
   { Calculate ibeta ** j - 1 }
   rmaxr := ibeta - 1;
   for i := 2 to j do
      rmaxr := ibeta * rmaxr + (ibeta - 1);
   if rmaxr >= maxint then
      maxr := maxint
   else
      maxr := trunc(rmaxr);
   rmaxr := maxr;
   { Check trunc works with this value, if not reduce rmaxr }
   while trunc(rmaxr) <> rmaxr do
      rmaxr := trunc(rmaxr - 1.0);
   maxr := trunc(rmaxr);
   errorcount := 0;
   writeln(' TEST REALS AGAINST INTEGERS IN RANGE:');
   writeln(' ', - maxr, '..', maxr);
   i := maxr div 2;
   for j := 1 to 10 do
      begin
      test(add, i + j, - j, i);
      test(add, - i, 2 * j, -(i - 2 * j) );
      test(sub, i, j, i - j);
      test(sub, - i, j, -(i + j) );
      test(mul, 1, -(i + j), -i - j);
      test(mul, -1, -(i - j), i - j);
      test(absr, - i, 0, i);
      test(absr, - j, 0, j);
      test(sqrr, j, 0, j * j);
      test(sqrr, - j, 0, j * j);
      test(neg, i, 0, - i);
      test(neg, - i - j, 0, i + j);
      test(plus, i + j, 0, i + j);
      test(plus, - i + j, 0, - i + j)
      end;
   for j := 0 to 10 do
      begin
      test(add, maxr - j, j, maxr);
      test(sub, maxr - j, - j, maxr);
      test(neg, maxr - j, 0, j - maxr);
      test(absr, - maxr + j, 0, maxr - j)
      end;
   i := trunc( sqrt(rmaxr) );
   for j := 0 to 10 do
      begin
      test(mul, i - j, i, i * i - i * j);
      test(sqrr, i - j, 0, (i * i - 2 * i * j) + j * j)
      end;

   if errorcount > 0 then
      writeln(' FAIL...6.7.2.2-15, (',errorcount,' TIMES)')
   else
      writeln(' QUALITY...6.7.2.2-15')
end.
