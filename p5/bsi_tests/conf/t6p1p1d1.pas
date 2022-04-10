{TEST 6.1.1-1, CLASS=CONFORMANCE}

{: This test checks that matching upper-case and lower-case
   letters are equivalent in identifiers and word-symbols
    if they are permitted. }
{  This test does not apply to processors with only one
   letter-case. }
{V3.1: Output of FAIL added. }

program t6p1p1d1(output);
var
   conform  : integer;

Begin
   BEGIN
      Conform:=1;
      CONFORM:=2;
      If conform = 2 then
         writeln(' PASS...6.1.1-1')
      else
         writeln(' FAIL...6.1.1-1')
   enD
end.
