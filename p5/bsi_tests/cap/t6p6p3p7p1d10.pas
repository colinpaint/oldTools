{TEST 6.6.3.7.1-10, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that two similar arrays of distinct types
   cannot be passed in the same section. }
{V3.1: New test. }

program t6p6p3p7p1d10(output);
var
   x: array [1..2] of boolean;
   y: array [1..2] of boolean;
procedure p(a, b: array [l..u: integer] of boolean);
   begin
   end;
begin
if false then
   begin
   x[1] := true; x[2] := false;
   y[1] := false; y[2] := true;
   p(x, y)
   end;
writeln(' DEVIATES...6.6.3.7.1-10')
end.
