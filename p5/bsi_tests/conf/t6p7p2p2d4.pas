{TEST 6.7.2.2-4, CLASS=CONFORMANCE}

{: This program checks that maxint satisfies the conditions laid
   down in the Pascal Standard. }
{V3.0: Last relational test extended. Was previously 6.7.2.2-5. }
{  Recoded to avoid compile-time range violation. }

program t6p7p2p2d4(output);
var
   i, max : integer;
begin
   max:=-(-maxint);
   i:=-maxint;
   if odd(maxint) then
      i:=(max-((max div 2)+1))*2
   else
      i:=(max-(max div 2))*2;
   if (maxint-1<=i) and (i<=maxint) then
      writeln(' PASS...6.7.2.2-4')
   else
      writeln(' FAIL...6.7.2.2-4')
end.
