{TEST 6.1.5-7, CLASS=DEVIANCE}

{: This program has been drafted to detect those processors that
   may implement 'const' as a textual macro facility. }
{  It is not  possible to do this in Pascal without some
   syntactic analysis, as is illustrated in this example. }
{V3.0: New test. }

program t6p1p5d7(output);
const
   n = -3;
var
   x : real;
begin
   x := 2.5E-n;
   writeln(' THE VALUE OF X IS ', x);
   writeln(' DEVIATES...6.1.5-7')
end.
