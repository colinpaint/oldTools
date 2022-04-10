{TEST 6.8.3.9-16, CLASS=DEVIANCE}

{: This test checks the type of error produced when a for-statement
   control-variable value is read during the execution of the
   for-statement. }
{V3.1: Program parameter removed. }

program t6p8p3p9d16(output);
var
   f:text;
   i,j:integer;
begin
   j:=0;
   rewrite(f);
   writeln(f,5,5,5,5,5);
   reset(f);
   for i := 1 to 10 do
   begin
      if (i<5) then
         read(f,i);
      j:=j+1
   end;
   writeln(' DEVIATES...6.8.3.9-16')
end.
