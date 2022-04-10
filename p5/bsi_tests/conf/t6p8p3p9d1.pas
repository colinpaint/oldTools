{TEST 6.8.3.9-1, CLASS=CONFORMANCE}

{: This program checks that assignment follows the evaluation
   of both expressions in a for-statement. }
{V3.1: Comment changed. }

program t6p8p3p9d1(output);
var
   i,j:integer;
begin
   i:=1;
   j:=0;
   for i:= (i+1) to (i+10) do
      j:=j+1;
   if j=10 then
      writeln(' PASS...6.8.3.9-1')
   else
      writeln(' FAIL...6.8.3.9-1')
end.
