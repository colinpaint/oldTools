{TEST 6.6.3.7.2-7, CLASS=LEVEL1, SUBCLASS=CONFORMANCE}

{: This conformance test illustrates a problem with the storage
   management of value conformant arrays. }
{  The program assumes that 100,000 reals cannot be stored in
   memory. }
{V3.1: New test. }

program t6p6p3p7p2d7(output);
label
   1, 2;
var
   x: array [1..1000] of real;
   i: integer;
   fail: boolean;
procedure p(a: array [l..u: integer] of real);
   begin
   if a[l] <> 1.0 then
      fail := true;
   goto 1
   end;
begin
for i := 1 to 1000 do
   x[i] := i;
fail := false;
i := 100;
2: p(x);
1: i := i-1;
   if i>0 then
      goto 2;
if fail then
   writeln(' FAIL...6.6.3.7.2-7')
else
   writeln(' PASS...6.6.3.7.2-7')
end.
