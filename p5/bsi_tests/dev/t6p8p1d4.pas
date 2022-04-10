{TEST 6.8.1-4, CLASS=DEVIANCE}

{: This program attempts to jump into the middle of a for-statement
   by means of a goto-statement. }
{V3.1: Test renumbered was 6.8.2.4-5. }

program t6p8p1d4(output);
label 100;
var
   i, j: integer;
begin
   j := 0;
   for i := 1 to 0 do
      begin
100:
      j := 1;
      writeln(' DEVIATES...6.8.1-4')
      end;
   i := 0;
   if j = 0 then
      goto 100
end.
