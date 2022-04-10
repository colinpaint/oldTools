{TEST 6.6.6.2-4, CLASS=ERRORHANDLING, NUMBER=33}

{: This program causes an error to occur as an expression
   with a negative value is used as an argument for the
   arithmetic function ln. }
{V3.0: Writes revised. }

program t6p6p6p2d4(output);
var
   m : real;
begin
   m:=-2.71828;
   m:=ln(m*2);
   writeln(' ERROR...6.6.6.2-4');
   writeln(' ERROR NOT DETECTED')
end.
