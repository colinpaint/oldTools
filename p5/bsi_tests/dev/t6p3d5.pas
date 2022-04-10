{TEST 6.3-5, CLASS=DEVIANCE}

{: This program tests that incorrect signed constants are not
   permitted in other contexts than constant-definitions. }
{V3.0: Write edited to conform to conventions. }

program t6p3d5(output);
const
   dot = '.';
begin
   writeln(' DEVIATES...6.3-5, SIGNED CHAR (', +dot, ')')
end.
