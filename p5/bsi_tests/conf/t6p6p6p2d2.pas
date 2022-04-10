{TEST 6.6.6.2-2, CLASS=CONFORMANCE}

{: This program tests the implementation of the arithmetic
   function sqr. Both real and integer expressions are used. }
{  Note: There is also a QUALITY test of the sqr function carried
   out as part of test 6.7.2.2-15. }
{V3.0: Altered to allow 4 digit accuracy.
   Write for FAIL revised. Comment expanded. }

program t6p6p6p2d2(output);
var
   i,counter : integer;
   variable : real;
begin
   counter := 0;
   for i:= -10 to 10 do
   begin
      if sqr(i) = i*i then
         counter := counter + 1
   end;
   variable := -10.3;
   while (variable < 10.3) do
   begin
      if (abs(sqr(variable) - variable * variable) < 0.001) then
         counter := counter+1;
      variable := variable + 0.9
   end;
   if (counter = 44) then
      writeln(' PASS...6.6.6.2-2')
   else
      writeln(' FAIL...6.6.6.2-2')
end.
