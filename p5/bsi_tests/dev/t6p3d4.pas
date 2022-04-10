{TEST 6.3-4, CLASS=DEVIANCE}

{: This program checks that signed non-numerics are not permitted. }
{  Note that minus may have a worse effect than plus. }

program t6p3d4(output);
const
   truth = true;
   plustruth = + truth;
begin
   writeln(' DEVIATES...6.3-4, SIGNED NON-NUMERIC ( PLUSTRUTH = ',
      plustruth, ')')
end.
