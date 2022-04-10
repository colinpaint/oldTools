{TEST 6.8.3.9-11, CLASS=DEVIANCE}

{: This program tests whether a real number can be assigned to
   a for-statement control-variable. }
{V3.0: Value check corrected. Comment and writes expanded.
   Was previously 6.8.3.9-10. }

program t6p8p3p9d11(output);
var
   i:integer;
   counter:integer;
begin
   counter:=0;
   for i:=0.0 to 3.5 do
      counter:=counter+1;
   if counter=4 then
      writeln(' DEVIATES...6.8.3.9-11, FOR EXPRESSION TRUNCATED')
   else
      if counter=5 then
         writeln(' DEVIATES...6.8.3.9-11, FOR EXPRESSION ROUNDED')
      else
         writeln(' DEVIATES...6.8.3.9-11, FOR EXPRESSION')
end.
