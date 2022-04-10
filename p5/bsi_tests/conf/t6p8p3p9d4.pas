{TEST 6.8.3.9-4, CLASS=CONFORMANCE}

{: This program checks the order of evaluation of the limit
   expressions in a for-statement. }
{V3.0: Comment and writes revised. Was previously 6.8.3.9-15. }

program t6p8p3p9d4(output);
var
   i,j,k:integer;

function f(var k:integer) : integer;
begin
   k:=k+1;
   f:=k
end;

begin
   k:=0;
   j:=0;
   for i:=f(k) to f(k)+10 do
      j:=j+1;
   if (j=12) then
      writeln(' PASS...6.8.3.9-4')
   else
      writeln(' FAIL...6.8.3.9-4')
end.
