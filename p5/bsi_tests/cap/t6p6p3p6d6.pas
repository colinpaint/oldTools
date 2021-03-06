{TEST 6.6.3.6-6, CLASS=LEVEL1, SUBCLASS=CONFORMANCE }

{: This test checks that the congruity of conformant array
   parameters is implemented correctly. }
{V3.1: New test. }

program t6p6p3p6d6(output);
var
   fail: boolean;
   a: array [ 1 .. 3 ] of integer;
   b: array [ -1 .. 1 ] of array [ 0 .. 2 ] of integer;
   i, j: integer;
function sum1( var a: array[ l .. u: integer] of integer): integer;
   var
      s, i: integer;
   begin
   s := 0;
   for i := l to u do
      s := s + a[i];
   sum1 := s + l + u
   end;

function sum2( b: array[l1..u1: integer;
                        l2..u2: integer] of integer): integer;
   var
      s, i, j: integer;
   begin
   s := l1 + u1 + l2 + u2;
   for i := l1 to u1 do
   for j := l2 to u2 do
      s := s + b[i,j];
   sum2 := s
   end;

procedure p( function f(var aa: array[la..ua: integer] of integer
                       ): integer;
             function g( bb: array[lb1..ub1: integer] of
                             array[lb2..ub2: integer] of integer
                       ):integer);
   var
      s: integer;
   begin
   s := f(a) + g(b);
   fail := s <> 129;
   end;
begin
for i := 1 to 3 do
   begin
   a[i] := 10*i;
   for j := 0 to 2 do
      b[i-2,j] := 3*i + j;
   end;
p(sum1, sum2);
if fail then
   writeln(' FAIL...6.6.3.6-6')
else
   writeln(' PASS...6.6.3.6-6')
end.
