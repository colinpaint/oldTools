{TEST 6.8.3.5-4, CLASS=DEVIANCE}

{: This test checks that the processor detects that case-constants
   and the case-index are of different types. }
{V3.1: Part of test removed as it duplicated other test. }

program t6p8p3p5d4(output);
var
   i,counter:integer;
begin
   counter:= 0;
   for i:= 1 to 2 do
      case i of
      1: counter:=counter+1;
      2.0: counter:=counter+1;
      end;
   if counter=2 then
      writeln(' DEVIATES...6.8.3.5-4, CASE CONSTANTS(1)')
   else
      writeln(' DEVIATES...6.8.3.5-4, CASE CONSTANTS(2)')
end.
