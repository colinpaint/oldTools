{TEST 6.6.3.7.1-7, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that packing of a conformant array is not
   permitted for two dimensions. }
{V3.1: New test. }

program t6p6p3p7p1d7(output);
var
   x: packed array [1..2] of packed array [3..4] of char;
procedure p(var a: packed array [l1..u1: integer] of
                   packed array [l2..u2: integer] of char);
   begin
   a[l1,l2] := 'a';
   end;
begin
if false then
   p(x);
writeln(' DEVIATES...6.6.3.7.1-7')
end.
