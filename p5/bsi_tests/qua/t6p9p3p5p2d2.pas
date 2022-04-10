{TEST 6.9.3.5.2-2, CLASS=QUALITY}

{: This test checks the accuracy of write for reals. }
{  Real values which can be exactly represented in the machine
   should be read into the machine exactly, i.e. without rounding
   error. This presents difficulty on a binary machine since
   the negative powers of two are exactly represented but have
   long decimal representations. This test writes I * (2**(-30))
   for I = 1 .. 100 to a temporary file in decimal
   and then reads them back, checking for
   the accuracy of the resulting value.
   A failure is indicated if the difference from the correct
   result is more than 3 bits in the last place. }
{V3.1: Program parameter removed and number of items
   reduced from 1000 to 100 and test added to avoid
   excessive failure. Machar changed. }

program t6p9p3p5p2d2(output);
const
   items = 100;
var
   tempfile: text;
   support, failed: boolean;

procedure writefile;
var
   y: real;
   i, number: integer;
begin
   y := 0.5;
   for i := 1 to 29 do
      y := 0.5 * y;
   for number := 1 to items do
      writeln(tempfile, number * y: 33: 30)
end { writefile };

procedure readfile;
const
   length = 30;
   fract = '000000000931322574615478515625';
   zero = '000000000000000000000000000000';
type
   reg = packed array [1..length] of char;
var
   rfract, rreg, readreg: reg;
   i: integer;
   number: 1 .. items;
   small, equal, big: integer;
   rmserror, xmaxerror, maxerror: real;
   diff, y: real;
   ibeta, it, irnd, ngrd, machep, negep, iexp, minexp, maxexp:
      integer;
   eps, epsneg, xmin, xmax: real;

procedure add;
{ Performs rreg := rreg + rfract }
var
   carry: 0..1;
   d: 0..19;
   i: 1..length;
begin
   carry := 0;
   for i := length downto 1 do
      begin
         d := ord(rreg [i]) + ord(rfract [i]) + carry - 2 *
            ord ('0');
         if d >= 10
         then
            begin
               carry := 1;
               rreg [i] := chr (d - 10 + ord ('0'))
            end
         else
            begin
               carry := 0;
               rreg [i] := chr (d + ord ('0'))
            end
      end
end { add };

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





procedure analyse;
var
   relerror: real;

begin
   if diff < 0.0
   then
      small := small + 1
   else
      if diff = 0.0
      then
         equal := equal + 1
      else
         big := big + 1;
   relerror := abs (diff / (number * y));
   if relerror > maxerror then
      begin
         maxerror := relerror;
         xmaxerror := number * y
      end;
   rmserror := rmserror + sqr (relerror)
end { analyse };

procedure readline;
{ Sets the variable readreg with the fractional digits
     of value on line  }
var
   i: integer;
   ch: char;
begin
   repeat
      begin
         get (tempfile);
         ch := tempfile ^
      end
   until ch = '.';
   for i := 1 to 30 do
      begin
         get (tempfile);
         ch := tempfile ^;
         if (ch < '0') or (ch > '9')
         then
            begin
            if not failed then
               begin
               writeln(' INPUT INCORRECT: NON-DIGIT (',ch,') READ');
               readreg[i] := '0';
               failed := true
               end
            end
        else
            readreg [i] := ch
      end
end { readline };

procedure calculatedifference;
{ Sets variable diff with the difference of the
  variable read and calculated }
var
   positive: boolean;
   negdiff: reg;

procedure subtract (var a, b: reg);
{ Sets negdiff := a - b }
var
   carry: 0..1;
   d: - 10..9;
   i: 1..length;
begin
   carry := 0;
   for i := length downto 1 do
      begin
         d := ord (a [i]) - ord (b [i]) - carry;
         if d < 0
         then
            begin
               carry := 1;
               negdiff [i] := chr (d + 10 + ord ('0'))
            end
         else
            begin
               carry := 0;
               negdiff [i] := chr (d + ord ('0'))
            end
      end
end { subtract };

procedure float;
{Sets diff := float(negdiff), accuracy not critical}
var
   i: 1..length;
   y: real;
begin
   diff := 0.0;
   y := 0.1;
   for i := 1 to length do
      begin
         if negdiff [i] <> '0' then
            diff := diff + (ord(negdiff[i]) - ord('0')) * y;
         y := y / 10
      end
end { float };

begin {calculatedifference}
   if readreg = zero
   then
      diff := 0.0
   else
      begin
         if readreg < rreg
         then
            begin
               positive := true;
               subtract (rreg, readreg)
            end
         else
            begin
               positive := false;
               subtract (readreg, rreg)
            end;
         float;
         if not positive then
            diff := - diff
      end
end { calculatedifference };

procedure printresults;
var
   loss, albeta, w: real;
   { Limit for loss in accuracy }
begin { The limit for loss in accuracy corresponds to
     3 bits for the Maximum Relative Error and to
     half this for the Root Mean Square error. Such limits are
     only exceeded by poor read routines.  }
   albeta := ln (ibeta);
   loss := ln (8.0) / albeta;
   rmserror := sqrt (rmserror / items);
   writeln('  THE RESULT WAS TOO LARGE', big:5, ' TIMES,');
   writeln('                 EQUAL', equal:9, ' TIMES, AND');
   writeln('                 TOO SMALL', small: 5, ' TIMES.');
   writeln;
   writeln('  THERE ARE', it: 4, ' BASE', ibeta: 4,
      ' SIGNIFICANT DIGITS IN A FLOATING-POINT NUMBER');
   if maxerror <> 0.0
   then
      begin
         support := false;
         w := ln (abs (maxerror)) / albeta
      end
   else
      w := - 999.0;
   writeln('  THE MAXIMUM RELATIVE ERROR OF', maxerror, '=',
      ibeta: 4, ' ** ', w: 7: 2);
   writeln('   OCCURRED FOR X =', xmaxerror);
   if w + it < 0.0
   then
      w := 0.0
   else
      w := w + it;
   writeln('   ESTIMATED LOSS OF BASE', ibeta: 4,
      ' SIGNIFICANT DIGITS IS', w: 7: 2);
   if w > loss then
      failed := true;
   if rmserror <> 0.0
   then
      w := ln (abs (rmserror)) / albeta
   else
      w := - 999.0;
   writeln('  ROOT-MEAN-SQUARE RELATIVE ERROR =', rmserror,
      '=', ibeta: 4, ' ** ', w: 7: 2);
   if w + it < 0.0
   then
      w := 0.0
   else
      w := w + it;
   writeln('   ESTIMATED LOSS OF BASE', ibeta: 4,
      ' SIGNIFICANT DIGITS IS', w: 7: 2);
   if w > 0.5 * loss then
      failed := true;
   writeln
end { printresults };

begin { readfile }
   machar (ibeta, it, irnd, ngrd, machep, negep, iexp, minexp,
      maxexp, eps, epsneg, xmin, xmax);
   small := 0;
   equal := 0;
   big := 0;
   rmserror := 0.0;
   maxerror := 0.0;
   xmaxerror := 0.0;
   y := 0.5;
   for i := 1 to 29 do
      y := 0.5 * y;
   rreg := fract;
   rfract := fract;
   for number := 1 to items do
      begin
         readline;
         calculatedifference;
         analyse;
         add
      end;
   writeln(' TEST ACCURACY OF WRITE FOR REALS');
   printresults
end { readfile };

begin { Main program }
   support := true;
   failed := false;
   rewrite (tempfile);
   writefile;
   reset (tempfile);
   readfile;
   writeln(' OUTPUT FROM TEST...6.9.3.5.2-2');
   if support
   then
      writeln(' WRITE OF REALS SUPPORTED IN SENSE OF W S BROWN')
   else
      writeln(' WRITE OF REALS IS APPROXIMATE');
   if failed
   then
      writeln(' FAIL...6.9.3.5.2-2')
   else
      writeln(' QUALITY...6.9.3.5.2-2')
end.
