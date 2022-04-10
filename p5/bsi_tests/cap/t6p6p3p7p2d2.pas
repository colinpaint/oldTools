{TEST 6.6.3.7.2-2, CLASS=LEVEL1, SUBCLASS=CONFORMANCE}

{: This test checks that a copy is made of a value array even
   if this does not seem to be necessary. }
{V3.1: New test. }

program t6p6p3p7p2d2(output);
var
   fail: boolean;
   x: array [1..2] of integer;
procedure p;
   begin
   x[1] := -1
   end;
procedure q (a: array [l..u: integer] of integer);
   begin
   p;
   fail := a[1] <> 0;
   end;
begin
x[1] := 0; x[2] := 1;
q(x);
if fail then
   writeln(' FAIL...6.6.3.7.2-2')
else
   writeln(' PASS...6.6.3.7.2-2')
end.
