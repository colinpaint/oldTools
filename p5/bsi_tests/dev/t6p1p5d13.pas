{TEST 6.1.5-13, CLASS=DEVIANCE}

{: This program deviates since spaces in numbers are forbidden. }
{V3.1: This test drawn from 6.1.5-5. }

program t6p1p5d13(output);
const
   five  = 1234E 2;
   six   = 1234E- 2;
   seven = 1234E+ 2;
   eight = 1234E +2;
begin
   writeln(' DEVIATES...6.1.5-13')
end.
