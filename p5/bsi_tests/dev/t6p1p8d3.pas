{TEST 6.1.8-3, CLASS=DEVIANCE}

{: This program deviates because a comment acts as a
   separator within a lexical token. }
{  The comment incorrectly separates the exponent character
   as though it was an operator. }
{V3.1: Comment changed. }

program t6p1p8d3(output);
const
   x = 1.0{exponent}E6;
begin
   writeln(' DEVIATES...6.1.8-3')
end.
