{TEST 6.1.6-3, CLASS=CONFORMANCE}

{: This test contains a label made up of five digits and whose
   integral value is less than 10000. }
{  A label is a digit-sequence whose admissibility is determined
   by its apparent integral value.  Thus the label in this program
   is correct Pascal.  Some deviant processors may limit labels
   to four digits alone, which is not correct. }
{V3.0: New test derived from DP7185. }

program t6p1p6d3(output);
label
   09876;
begin
   goto 09876;
09876:
   writeln(' PASS...6.1.6-3')
end.
