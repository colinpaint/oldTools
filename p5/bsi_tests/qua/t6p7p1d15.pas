{TEST 6.7.1-15, CLASS=QUALITY}

{: This test constructs a null set by using a member-designator
   of the form maxint..-maxint. }
{V3.1: New test. maxint used in this quality version of 6.7.1-2. }

program t6p7p1d15(output);
begin
   if ([maxint..-maxint]=[]) then
      writeln(' QUALITY...6.7.1-15')
   else
      writeln(' FAIL...6.7.1-15')
end.
