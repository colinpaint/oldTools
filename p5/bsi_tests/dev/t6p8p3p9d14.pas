{TEST 6.8.3.9-14, CLASS=DEVIANCE}

{: This program tests whether a formal parameter can be used
   as a for-statement control-variable. }
{V3.0: Write revised. Was previously 6.8.3.9-13. }

program t6p8p3p9d14(output);

procedure p;
var
   i:integer;

   procedure loop(var i:integer);
   var
      j:integer;
   begin
      j:=0;
      for i:=1 to 10 do
         j:=j+1
   end;
begin
   i:=10;
   loop(i)
end;

begin
   p;
   writeln(' DEVIATES...6.8.3.9-14')
end.
