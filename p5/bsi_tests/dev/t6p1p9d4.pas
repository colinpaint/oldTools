{TEST 6.1.9-4, CLASS=DEVIANCE}

{: Nested comments are not permitted in Pascal. }
{  This program differs from test 6.1.8-4 by using different
   delimiters for the innermost 'nested comment'.  The program
   is still incorrect and should be rejected by processors. }
{V3.1: Comment changed. }

program t6p1p9d4(output);
begin
   { writeln(' RAN 1');
   (* writeln(' RAN 2'); *)
   writeln(' RAN 3'); }
   writeln(' DEVIATES...6.1.9-4')
end.
