{TEST 6.6.5.2-3, CLASS=CONFORMANCE}

{: This program checks that a rewrite on the file sets
   eof to be true. }
{V3.1: Program parameter removed. }

program t6p6p5p2d3(output);
var
   fyle : text;
begin
   rewrite(fyle);
   if eof(fyle) then
      writeln(' PASS...6.6.5.2-3')
   else
      writeln(' FAIL...6.6.5.2-3')
end.
