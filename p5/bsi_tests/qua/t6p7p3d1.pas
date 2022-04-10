{TEST 6.7.3-1, CLASS=QUALITY}

{: This program checks if deeply nested function calls are possible. }
{V3.0: New test. }

program t6p7p3d1(output);
var x: real;
begin
   x := sqrt(sqrt(sqrt(sqr(sqr(sqrt(16.0))))));
   if (x > 2.001) or (x < 1.999) then
      writeln(' FAIL...6.7.3-1, NESTED FUNCTION CALLS (X = ',x,')')
   else
      writeln(' QUALITY...6.7.3-1')
end.
