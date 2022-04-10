{TEST 6.1.5-6, CLASS=DEVIANCE}

{: This program illustrates that brackets may not appear within
   a number. }
{  By implication, this is likely if the exponent
   marker is regarded as a (pseudo)operator. }
{V3.0: New test. }

program t6p1p5d6(output);
const
   x = 2.0E(-3);
begin
   writeln(' THE VALUE OF X IS ', x);
   writeln(' DEVIATES...6.1.5-6')
end.
