{TEST 6.6.3.8-2, CLASS=LEVEL1, SUBCLASS=ERRORHANDLING, NUMBER=59}

{: This program sees if the largest and smallest bounds of
   an array lie within the bounds of the formal conformant
   array schema. }
{V3.1: New test. }

program t6p6p3p8d2(output);

type
   one = 0..1;
   two = 1..2;
var
   x: array [one] of integer;
procedure p(var a: array [l..u: two] of integer);
   begin
   end;

procedure q(var b: array [l..u: integer] of integer);
   begin
   p(b)
   end;
begin
q(x);
writeln(' ERROR...6.6.3.8-2');
writeln(' ERROR NOT DETECTED')
end.
