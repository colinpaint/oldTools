{TEST 6.1.3-2, CLASS=CONFORMANCE}

{: This program attempts to identify deviant processors by using
   two identifiers which differ in a way that will slip through
   several implementations. }
{  The Standard does not set a limit on the length of identifiers,
   nor does it permit processors to treat different identifiers as
   equivalent.  Accordingly, processors that ignore characters in
   identifiers after the eighth (or tenth, sixteenth, etc) do not
   strictly conform to the Standard. }
{V3.0: Test reclassified to become CONFORMANCE due to
   change in DP7185.  Comment rewritten, and identifiers chosen
   to maximize detection of truncation, hashing, and tail
   preservation.  Was test 5.2.2-1. The test which was previously
   6.1.3-2 has been moved to 6.1.1-1 due to a change in DP7185
   wording. }

program t6p1p3d2(output);
const
   valueofaverylongidentifierwithatail = 10;

procedure p;
var
   valueofaverylongidentifieraithwtail:integer;
begin
   valueofaverylongidentifieraithwtail:=11;
   if valueofaverylongidentifierwithatail <>
      valueofaverylongidentifieraithwtail then
      writeln(' PASS...6.1.3-2')
   else
      writeln(' FAIL...6.1.3-2')
end;

begin
   p
end.
