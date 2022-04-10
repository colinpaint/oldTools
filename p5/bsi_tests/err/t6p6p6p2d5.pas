{TEST 6.6.6.2-5, CLASS=ERRORHANDLING, NUMBER=34}

{: This program causes an error to occur as a negative
   argument is used for the sqrt function. }
{  The error should be detected at run-time. }
{V3.0: Writes revised. }

program t6p6p6p2d5(output);
var
   m    : real;
   i, j : integer;
begin
   i:=256;
   j:=i*2;
   j:=j-257;
   m:=sqrt(j-i);
   writeln(' ERROR...6.6.6.2-5');
   writeln(' ERROR NOT DETECTED')
end.
