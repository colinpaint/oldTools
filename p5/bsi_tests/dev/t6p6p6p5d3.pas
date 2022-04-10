{TEST 6.6.6.5-3, CLASS=DEVIANCE}

{: This test checks that the function odd is restricted to
   integer parameters. }
{V3.0: Spelling correction in comment, and write revised. }

program t6p6p6p5d3(output);
var
   x:real;
begin
   x:=1.0;
   if odd(x) then
      writeln(' DEVIATES...6.6.6.5-3, REAL ODD')
   else
      writeln(' DEVIATES...6.6.6.5-3, MESS - ODD')
end.
