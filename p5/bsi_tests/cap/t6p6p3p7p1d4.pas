{TEST 6.6.3.7.1-4, CLASS=LEVEL1, SUBCLASS=DEVIANCE }

{: This test checks that an assignment to a bound-identifier
   is not permitted. }
{V3.1: New test. }

program t6p6p3p7p1d4(output);
var
   a: array [ 1 .. 2 ] of integer;
procedure p( x: array [ l..u: integer] of integer);
   begin
   l := 1;
   end;
begin
if false then
   begin
   a[1] := 1; a[2] := 2;
   p(a);
   end;
writeln( ' DEVIATES...6.6.3.7.1-4' )
end.
