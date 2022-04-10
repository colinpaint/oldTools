{TEST 6.7.1-4, CLASS=QUALITY}

{: This program checks that deeply nested expressions are
   permitted. }
{  Note that the '+' is a real, not integer '+' which cannot be
   determined until the final part of the expression is read. }
{V3.0: New test. }

program t6p7p1d4(output);
var
   x : real;
begin
x := 1+(1+(1+(1+(1+(1+(1+(1+(1+(1+(1+(1+(1+2.0))))))))))));
if abs(x - 15.0) <=  0.001 then
   writeln(' QUALITY...6.7.1-4')
else
   writeln(' FAIL...6.7.1-4')
end.
