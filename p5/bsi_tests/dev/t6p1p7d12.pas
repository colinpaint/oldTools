{TEST 6.1.7-12, CLASS=DEVIANCE}

{: A string, which is not a variable, cannot be indexed. }
{V3.0: New test. }

program t6p1p7d12(output);
const
   s = ' DEVIATES...6.1.7-12,';
begin
   if s[2] <> 'D' then
      writeln(' DEVIATES...6.1.7-12, STRING CONST INDEXING DEVIANCE')
   else
      writeln(s, ' STRING CONST INDEXING')
end.
