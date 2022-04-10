{TEST 6.6.5.3-12, CLASS=QUALITY}

{: This program tests that the procedure dispose is implemented
   and is not merely a dummy, or that the store is large enough
   not to need dispose. }
{V3.1: Comment changed. }

program t6p6p5p3d12(output);
type rec = record
           a: array [0 .. 1023] of integer
           end;
     ptr = ^ rec;
var
   x: ptr;
   sum, i: integer;
begin
sum := 0;
for i:= 1 to 1023 do
   begin
   new(x);
   x^.a[0] := 1;
   sum := sum + x^.a[0];
   dispose(x)
   end;
if sum <> 1023 then
   writeln(' FAIL...6.6.5.3-12')
else
   writeln(' QUALITY...6.6.5.3-12')
end.
