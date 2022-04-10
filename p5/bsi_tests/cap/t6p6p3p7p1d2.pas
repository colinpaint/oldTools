{TEST 6.6.3.7.1-2, CLASS=LEVEL1, SUBCLASS=DEVIANCE }

{: This test checks that explicit bounds to a conformant array
   cannot be given in the call. }
{V3.1: New test. }

program t6p6p3p7p1d2(output);
var
   a: array [ 1 .. 2 ] of integer;
procedure p( var x: array [ l..u : integer] of integer);
   begin
   x[l] := 3;
   x[u] := 4;
   end;
begin
if false then
   p(a, 1, 2);
writeln( ' DEVIATES...6.6.3.7.1-2' )
end.
