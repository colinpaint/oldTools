{TEST 6.6.5.2-2, CLASS=CONFORMANCE}

{: This program tests that the first element of the file fyle
   is assigned to the buffer variable fyle^ when the procedure
   reset is used with the file. }
{V3.1: Program parameter removed. }

program t6p6p5p2d2(output);
var
   fyle : text;
begin
   rewrite(fyle);
   writeln(fyle,'ABC');
   writeln(fyle,'DEF');
   reset(fyle);
   if fyle^='A' then
      writeln(' PASS...6.6.5.2-2')
   else
      writeln(' FAIL...6.6.5.2-2')
end.
