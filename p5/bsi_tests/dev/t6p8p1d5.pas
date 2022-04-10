{TEST 6.8.1-5, CLASS=DEVIANCE}

{: This program attempts to jump into the middle of a for-statement
   by means of a non-local goto-statement. }
{V3.1: Test renumbered, was 6.8.2.4-6. }

program t6p8p1d5(output);
label 100;
var
   i, j: integer;
procedure p( k: integer);
   begin
   if k = 0 then
      goto 100
   end;
begin
   j := 0;
   for i := 1 to 0 do
      begin
   100:
      j := 1;
      writeln(' DEVIATES...6.8.1-5')
      end;
   i := 0;
   if j = 0 then
      p(j)
end.
