{TEST 6.6.3.8-4, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that the component type of the actual and formal
   arrays must be conformable. }
{V3.1: New test. }

program t6p6p3p8d4(output);

type
   int = - maxint .. maxint;
var
   x: array [1..2, 3..4] of int;
procedure p (var a: array [l1..u1: integer;
                           l2..u2: integer] of integer);
   begin
   end;
begin
p(x);
writeln(' DEVIATES...6.6.3.8-4')
end.
