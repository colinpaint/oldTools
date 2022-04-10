{TEST 6.1.5-1, CLASS=CONFORMANCE}

{: This program tests the conformance of the processor to the
   syntax productions for numbers.  }
{V3.0: Check on sum of a to j added. Writes modified to conform
   to conventions. }

program t6p1p5d1(output);

const
   { all cases are legal productions }
   a = 1;
   b = 12;
   c = 0123;
   d = 123.0123;
   e = 123.0123E+2;
   f = 123.0123E-2;
   g = 123.0123E2;
   h = 123E+2;
   i = 0123E-2;
   j = 0123E2;
var
   sum : real;

begin
   sum := a + b + c + d + e + f + g + h + i + j;
   if (sum > 49470.0) or
      (sum < 49460.0) then
      writeln(' FAIL...6.1.5-1')
   else
      writeln(' PASS...6.1.5-1')
end.
