{TEST 6.6.3.7.1-3, CLASS=LEVEL1, SUBCLASS=CONFORMANCE }

{: This test checks for the equivalence of the long and
   abbreviated form of conformant array schemas. }
{V3.1: New test. }

program t6p6p3p7p1d3(output);
var
   a: array [ 1 .. 2, 3 .. 4 ] of real;
   i: 1 .. 2;
   j: 3 .. 4;
function sum1( x: array [l1..u1: integer;
                         l2..u2: integer] of real): real;
   var
      s: real;
      i, j: integer;
   begin
   s := 0.0;
   for i := l1 to u1 do
   for j := l2 to u2 do
      s := s + x[i,j];
   sum1 := s
   end;
function sum2( x: array [l1..u1: integer] of array [
                         l2..u2: integer] of real): real;
   var
      s: real;
      i, j: integer;
   begin
   s := 0.0;
   for i := l1 to u1 do
   for j := l2 to u2 do
      s := s + x[i,j];
   sum2 := s
   end;
begin
   for i := 1 to 2 do
   for j := 3 to 4 do
      a[i,j] := 10*i + j;
   if sum1(a) <> sum2(a) then
      writeln( ' FAIL...6.6.3.7.1-3' )
   else
      writeln( ' PASS...6.6.3.7.1-3' )
end.
