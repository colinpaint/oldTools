{TEST 6.7.2.5-4, CLASS=DEVIANCE}

{: This test checks that file comparisons are not allowed. }
{  The semantics of this situation are particularly ill-defined,
   and not within Standard Pascal. }
{V3.1: Program parameter removed. }

program t6p7p2p5d4(output);
var
   f:text;
begin
   rewrite(f);
   if f=output then
      writeln(' DEVIATES...6.7.2.5-4, FILE CONTENTS COMPARED')
   else
      writeln(' DEVIATES...6.7.2.5-4, FILE DESCRIPTORS COMPARED')
end.
