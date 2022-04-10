{TEST 6.8.3.5-6, CLASS=DEVIANCE}

{: This test checks that the processor detects that a case-index
   and the case-constants are of different types. }
{V3.0: Comment expanded. Final write corrected from PASS to FAIL.
   Was previously 6.8.3.5-11. }

program t6p8p3p5d6(output);
var
   i,counter:integer;
   r:real;
begin
   counter:= 0;
   for i:= 1 to 4 do
   begin
      r:=i;
      case r of
      1: counter:=counter+1;
      2: counter:=counter+1;
      3: counter:=counter+1;
      4: counter:=counter+1
      end
   end;
   if counter=4 then
      writeln(' DEVIATES...6.8.3.5-6, CASE CONSTANTS(1)')
   else
      writeln(' DEVIATES...6.8.3.5-6, CASE CONSTANTS(2)')
end.
