{TEST 6.8.3.5-11, CLASS=ERRORHANDLING, NUMBER=51}

{: This test is in error since the case-statement
   is given without a case-constant of the selected value. }
{  This time the value is a long way outside the case. An
   error should  be produced at execution time. }
{V3.0: Writes revised. Was previously 6.8.3.5-6. }

program t6p8p3p5d11(output);
var
   i:integer;
begin
   i:=1000;
   case i of
   -3,3: writeln(' THIS LINE SHOULD NOT GET WRITTEN')
   end;
   writeln(' ERROR...6.8.3.5-11');
   writeln(' ERROR NOT DETECTED')
end.
