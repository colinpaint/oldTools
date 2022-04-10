{TEST 6.6.6.2-3, CLASS=CONFORMANCE}

{: This program tests the implementation of the arithmetic
   functions sin, cos, exp, ln, sqrt, and arctan. }
{  A rough accuracy test is done, but is not the purpose
   of this program. }
{V3.0: Accuracy reduced to 4 digits maximum.
   Checks extended to limits both sides of all function
   results. Writes for failure standardised. }

program t6p6p6p2d3(output);
const
   pi = 3.1415926;
var
   counter : integer;
begin
   counter := 0;
   if ((-0.001<sin(pi)) and (sin(pi)<0.001)) and
      ((0.70<sin(pi/4)) and (sin(pi/4)<0.71)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.2-3, SIN FUNCTION');

   if ((-1.001<cos(pi)) and (cos(pi)<-0.999)) and
      ((0.70<cos(pi/4)) and (cos(pi/4)<0.71)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.2-3, COS FUNCTION');

   if ((2.710<exp(1)) and (exp(1)<2.720)) and
      ((0.36<exp(-1)) and (exp(-1)<0.37)) and
      ((8100<exp(9)) and (exp(9)<8110)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.2-3, EXP FUNCTION');

   if ((0.999<ln(exp(1))) and (ln(exp(1))<1.001)) and
      ((0.69<ln(2)) and (ln(2)<0.70)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.2-3, LN FUNCTION');

   if ((4.99<sqrt(25)) and (sqrt(25)<5.01)) and
      ((5.09<sqrt(26)) and (sqrt(26)<5.10)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.2-3, SQRT FUNCTION');

   if ((0.090<arctan(0.1)) and (arctan(0.1)<0.10)) and
      ((-0.001<arctan(0)) and (arctan(0)<0.001)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.2-3, ARCTAN FUNCTION');

   if counter=6 then
      writeln(' PASS...6.6.6.2-3')
end.
