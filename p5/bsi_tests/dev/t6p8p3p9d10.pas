{TEST 6.8.3.9-10, CLASS=DEVIANCE}

{: This program tests whether a non-local variable at an
   intermediate level can be used as a for-statement
   control-variable. }
{V3.0: Write revised. Was previously 6.8.3.9-9. }

program t6p8p3p9d10(output);

procedure p;
var
   i:integer;

   procedure loop;
   var
      j:integer;
   begin
      j:=0;
      for i:=1 to 10 do
         j:=j+1
   end;
begin
   loop
end;

begin
   p;
   writeln(' DEVIATES...6.8.3.9-10')
end.
