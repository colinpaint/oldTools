{TEST 6.6.3.7.1-6, CLASS=LEVEL1, SUBCLASS=CONFORMANCE}

{: This test checks that the final array dimension of a schema can
   be packed and also checks the bound-identifier values. }
{V3.1: New test. }

program t6p6p3p7p1d6(output);

type
   pak = packed array[1..2] of char;
var
   fail : boolean;
   x: array [3..4] of pak;
   y: array [5..6] of packed array [7..8] of char;

procedure seta(a: array [l1..u1 : integer] of packed
                  array [l2..u2 : integer] of char;
                  b1, b2, b3, b4: integer);
   var
      i,j : integer;
   begin
   if (b1<>l1) or (b2<>u1) or (b3<>l2) or (b4<>u2) then
      fail := true;
   for i := l1 to u1 do
   for j := l2 to u2 do
      a[i,j] := 'a';
   end;
begin
fail := false;
seta(x, 3, 4, 1, 2);
seta(y, 5, 6, 7, 8);
if fail then
   writeln(' FAIL...6.6.3.7.1-6')
else
   writeln(' PASS...6.6.3.7.1-6')
end.
