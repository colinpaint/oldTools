{TEST 6.1.5-5, CLASS=DEVIANCE}

{: This program deviates since spaces in numbers are forbidden. }
{  This includes spaces around '.' and 'E'. }
{V3.1: This test was split into two (6.1.5-5). }

program t6p1p5d5(output);
const
   one   = 1 234;
   two   = 0 .1234;
   three = 0. 1234;
   four  = 1234 E2;
   nine  = 0.123 4;
begin
   writeln(' DEVIATES...6.1.5-5')
end.
