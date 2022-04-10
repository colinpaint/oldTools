{TEST 6.6.5.2-1, CLASS=CONFORMANCE}

{: This program writes an empty file and then checks that
   eof is true. }
{V3.1: Program parameter removed. Comment rewritten. }

program t6p6p5p2d1(output);
var
   fyle : text;
begin
   rewrite(fyle);
   reset(fyle);
   if eof(fyle) then
      writeln(' PASS...6.6.5.2-1')
   else
      writeln(' FAIL...6.6.5.2-1')
end.
