{TEST 6.1.5-8, CLASS=QUALITY}

{: This test checks that lines of up to 72 characters are
   permitted. }
{V3.0: New test. The test that was here in previous versions
   has now been moved to 6.1.1-2 to correspond with DP7185. }

program t6p1p5d8(output);
const
   i                                =                                 1;
begin
if i = 1 then
   writeln(' QUALITY...6.1.5-8')
else
   writeln(' FAIL...6.1.5-8')
end.
