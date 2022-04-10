{TEST 6.1.8-2, CLASS=CONFORMANCE}

{: This program checks that an open comment delimiter can appear
   in a comment. }
{V3.0: Comment revised due to change in DP7185. }

program t6p1p8d2(output);
begin
   { Is a { permitted in a comment. }
   writeln(' PASS...6.1.8-2')
end.
