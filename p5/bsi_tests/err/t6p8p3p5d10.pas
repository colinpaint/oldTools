{TEST 6.8.3.5-10, CLASS=ERRORHANDLING, NUMBER=51}

{: This test checks the type of error produced when the
   case-statement does not contain a constant of the selected value. }
{V3.0: Writes revised. Was previously 6.8.3.5-5. }

program t6p8p3p5d10(output);
var
   i:integer;
begin
   i:=0;
   case i of
   -3,3: writeln(' THIS LINE SHOULD NOT GET WRITTEN')
   end;
   writeln(' ERROR...6.8.3.5-10');
   writeln(' ERROR NOT DETECTED')
end.
