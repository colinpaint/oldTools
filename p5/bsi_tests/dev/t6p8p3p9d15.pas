{TEST 6.8.3.9-15, CLASS=DEVIANCE}

{: This program tests whether a global variable (at program level)
   can be used as a for-statement control-variable inside an
   inner block. }
{V3.0: Write revised. Was previously 6.8.3.9-14. }

program t6p8p3p9d15(output);
var
   i:integer;

procedure p;

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
   writeln(' DEVIATES...6.8.3.9-15')
end.
