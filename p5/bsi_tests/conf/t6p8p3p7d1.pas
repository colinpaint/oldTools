{TEST 6.8.3.7-1, CLASS=CONFORMANCE}

{: This test checks that a repeat-statement is executed at
   least once. }
{V3.0: Writes revised. }

program t6p8p3p7d1(output);
var
   counter:integer;
   bool:boolean;
begin
   bool:=true;
   counter:=0;
   repeat
      counter:=counter+1
   until bool;
   if(counter=1) then
      writeln(' PASS...6.8.3.7-1')
   else
      writeln(' FAIL...6.8.3.7-1')
end.
