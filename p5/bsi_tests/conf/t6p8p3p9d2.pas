{TEST 6.8.3.9-2, CLASS=CONFORMANCE}

{: This test checks that extreme values may be used in a
   for-statement. }
{  This will break a simply implemented for loop.
   In some processors the succ test may fail at the last increment
   and cause wraparound(overflow) - leading to an infinite loop. }
{V3.0: Writes revised. Was previously 6.8.3.9-7. }

program t6p8p3p9d2(output);
var
   i,j:integer;
begin
   j:=0;
   for i:= (maxint-10) to maxint do
     j:=j+1;
   for i:= (-maxint+10) downto -maxint do
      j:=j+1;
   if j = 22 then
      writeln(' PASS...6.8.3.9-2')
   else
      writeln(' FAIL...6.8.3.9-2')
end.
