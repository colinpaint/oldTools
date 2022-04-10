{TEST 6.7.1-2, CLASS=CONFORMANCE}

{: This test checks that the member designator x..y, where x>y,
   denotes no members. }
{V3.1: Constant null set added. }

program t6p7p1d2(output);
var
   x,y :integer;
begin
   x:=2;
   y:=1;
   if ([x..y]=[]) and ([127..0]=[]) then
      writeln(' PASS...6.7.1-2')
   else
      writeln(' FAIL...6.7.1-2')
end.
