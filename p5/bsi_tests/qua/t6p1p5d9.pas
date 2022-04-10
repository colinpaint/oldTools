{TEST 6.1.5-9, CLASS=QUALITY}

{: This test contains very large integer and real constants. }
{  This program is clearly 'correct', but the values exceed those
   of most likely implementations.  Really excellent
   implementations may pass, but the test is intended to explore
   the treatment the processor gives to such large numbers
   in its diagnostics. }
{V3.0: New test. }

program t6p1p5d9(output);
const i = 10000000000000000000000000;
      x = 1.0E99999;
begin
   writeln(' THE VALUE OF I IS ', i);
   writeln(' THE VALUE OF X IS ', x);
   if (i <> 10000000000000000000000000) or (x <> 1.0E99999) then
      writeln(' FAIL...6.1.5-9, VALUES WRONG')
   else
      writeln(' QUALITY...6.1.5-9, VERY LARGE VALUES')
end.
