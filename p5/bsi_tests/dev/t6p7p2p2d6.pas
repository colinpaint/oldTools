{TEST 6.7.2.2-6, CLASS=DEVIANCE}

{: This program is invalid because the operands
   of the div operation are real. }
{V3.0: New test. }

program t6p7p2p2d6(output);
var x, y: real;
begin
   x := 1.0;  y := 2.0;
   x := x div y;
   writeln(' DEVIATES...6.7.2.2-6')
end.
