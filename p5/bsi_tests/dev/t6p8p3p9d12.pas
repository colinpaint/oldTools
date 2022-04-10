{TEST 6.8.3.9-12, CLASS=DEVIANCE}

{: This test checks whether a for-statement control-variable
   can be a component variable. }
{V3.0: Write revised. Was previously 6.8.3.9-11. }

program t6p8p3p9d12(output);
var
   rec:record
         i,j:integer
       end;
begin
   for rec.i:=0 to 10 do
      rec.j := rec.i;
   with rec do
      for i := 0 to 10 do
         j:=i;
   writeln(' DEVIATES...6.8.3.9-12')
end.
