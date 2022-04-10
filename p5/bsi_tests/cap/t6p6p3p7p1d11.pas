{TEST 6.6.3.7.1-11, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that the component type of a conformant
   array must be the same as the actual type. }
{V3.1: New test. }

program t6p6p3p7p1d11(output);
type
   t = 1..2;
   nott = 1..2;
var
   x: array [3..4] of t;

procedure p(a: array [l..u: integer] of nott);
   begin
   end;
begin
if false then
   begin
   x[3] := 1; x[4] := 2;
   p(x)
   end;
writeln(' DEVIATES...6.6.3.7.1-11')
end.
