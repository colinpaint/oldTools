{TEST 6.8.3.9-5, CLASS=DEVIANCE}

{: This program checks that an assignment cannot be made to a
   for-statement control-variable. }
{V3.0: Writes revised. Was previously 6.8.3.9-2. }

program t6p8p3p9d5(output);
var
  i,j:integer;
begin
   j:=0;
   for i:=1 to 10 do
   begin
      j:=j+1;
      i:=i+1
   end;
   writeln(' DEVIATES...6.8.3.9-5')
end.
