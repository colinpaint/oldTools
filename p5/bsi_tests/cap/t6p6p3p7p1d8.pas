{TEST 6.6.3.7.1-8, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that arrays with different bounds cannot be
   passed as conformant arrays in the same section. }
{V3.1: New test. }

program t6p6p3p7p1d8(output);
type
   bit = (one, two);
var
   x: array [1..2] of bit;
   y: array [3..4] of bit;

procedure p(a, b: array [l..u: integer] of bit);
   begin
   end;
begin
if false then
   p(x,y);
writeln(' DEVIATES...6.6.3.7.1-8')
end.
