{TEST 6.8.3.9-3, CLASS=CONFORMANCE}

{: This program checks that a control-variable of a for-statement
   is not undefined if the for-statement is left via a
   goto-statement. }
{V3.0: Writes revised. Was previously 6.8.3.9-8. }

program t6p8p3p9d3(output);
label 100;
var
   i,j:integer;
begin
   j:=1;
   for i:=1 to 10 do
   begin
      if (j=5) then
         goto 100;
      j:=j+1
   end;
100:
   if i=j then
      writeln(' PASS...6.8.3.9-3')
   else
      writeln(' FAIL...6.8.3.9-3')
end.
