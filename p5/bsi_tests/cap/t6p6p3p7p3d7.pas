{TEST 6.6.3.7.3-7, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that a variable formal conformant array cannot
   be passed as an actual to a value conformant array. }
{V3.1: New test. }

program t6p6p3p7p3d7(output);

var
   x: array [boolean] of char;
procedure q(b: array [l..u: boolean] of char);
   begin
   end;

procedure p(var a: array [l..u: boolean] of char);
   begin
   q(a)
   end;
begin
if false then
   begin
   x[false] := 'a';
   x[true] := 'b';
   p(x)
   end;
writeln(' DEVIATES...6.6.3.7.3-7')
end.
