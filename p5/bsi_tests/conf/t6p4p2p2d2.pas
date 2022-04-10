{TEST 6.4.2.2-2, CLASS=CONFORMANCE}

{: This test checks that the values within the range
   -maxint..+maxint are values of integer type. }
{V3.0: Value check added. Write in case of failure revised. }

program t6p4p2p2d2(output);
type
   natural = 0..maxint;
   whole = -maxint..+maxint;
var
   i : natural;
   j : whole;
   k : integer;
begin
   i:=maxint;
   j:=-maxint;
   k:=maxint;
   if (i = k) and (k = -j) and (k > j) then
      writeln(' PASS...6.4.2.2-2')
   else
      writeln(' FAIL...6.4.2.2-2')
end.
