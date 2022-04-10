{TEST 6.1.1-2, CLASS=CONFORMANCE}

{: This test checks that upper-case and lower-case exponent-markers
   are equivalent. }
{  This test is not relevant to processors with only
   one letter-case. }
{V3.0: Reclassified and revised when DP7185 corrected this
   loophole in earlier drafts.  Moved from test 6.1.5-6 to
   current position to correspond to DP7185. }

program t6p1p1d2(output);
var
   i : real;
begin
   { Additionally we assume that equality tests OUGHT to work under
     the conditions in this program. }
   i:=123e2;
   if i = 123E2 then
      writeln(' PASS...6.1.1-2')
   else
      writeln(' FAIL...6.1.1-2')
end.
