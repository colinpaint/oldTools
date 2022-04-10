{TEST 6.7.2.2-5, CLASS=DEVIANCE}

{: The monadic operator plus can only be applied to numeric
   operands. }
{V3.0: Comment and write altered to terminology of Standard.
   Was previously 6.7.2.2-9. }

program t6p7p2p2d5(output);
const
   capa = 'A';
begin
   writeln(' ',+capa);
   writeln(' DEVIATES...6.7.2.2-5')
end.
