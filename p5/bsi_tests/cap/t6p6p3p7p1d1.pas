{TEST 6.6.3.7.1-1, CLASS=LEVEL1, SUBCLASS=CONFORMANCE }

{: This test checks assignment of, and of the components of
   value and variable conformant arrays. }
{V3.1: New test. }

program t6p6p3p7p1d1(output);
type
   index = 1 .. 2;
var
   i: index;
   a, b, c, d: array[index] of integer;
procedure p( x, y: array[l1..u1: index] of integer;
         var u, v: array[l2..u2: index] of integer);
   begin
   y[u1] := x[l1];
   x := y;
   v[u2] := u[l2];
   u := v
   end;
begin
   for i := 1 to 2 do
      begin
      a[i] := i;
      b[i] := i + 2;
      c[i] := i + 4;
      d[i] := i + 6
      end;
   p(a, b, c, d);
   if (a[1] <> 1) or (b[2] <> 4) or (c[2] <> 5)
                  or (d[1] <> 7) then
      writeln( ' FAIL...6.6.3.7.1-1' )
   else
      writeln( ' PASS...6.6.3.7.1-1' )
end.
