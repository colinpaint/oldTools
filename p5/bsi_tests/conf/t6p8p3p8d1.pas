{TEST 6.8.3.8-1, CLASS=CONFORMANCE}

{: This test checks that a while-statement is not entered
   if the initial value of the Boolean expression is false. }
{V3.0: Comment and writes revised. }

program t6p8p3p8d1(output);
var
   bool:boolean;
   counter:integer;
begin
   counter:=0;
   bool:=false;
   while bool do
   begin
      counter:=counter+1;
      bool:=false
   end;
   if (counter=0) then
      writeln(' PASS...6.8.3.8-1')
   else
      writeln(' FAIL...6.8.3.8-1')
end.
