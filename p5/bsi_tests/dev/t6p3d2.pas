{TEST 6.3-2, CLASS=DEVIANCE}

{: This program checks that signed chars are not permitted. }
{  Note that minus may have a worse effect than plus. }

program t6p3d2(output);
const
   dot = '.';
   plusdot = + dot;
begin
   writeln(' DEVIATES...6.3-2, SIGNED CHAR (', plusdot, ')')
end.
