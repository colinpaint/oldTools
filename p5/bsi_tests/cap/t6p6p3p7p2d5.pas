{TEST 6.6.3.7.2-5, CLASS=LEVEL1, SUBCLASS=CONFORMANCE}

{: This test checks that the two permitted contexts of the use of
   a value conformant array parameter as an actual parameter
   is permitted. }
{V3.1: New test. }

program t6p6p3p7p2d5(output);

var
   fail: boolean;
   x: array [boolean] of real;
function f( var a: array [l..u: boolean] of real): boolean;
   begin
   f := a[l] = 1.0
   end;

procedure q(b: boolean);
   begin
   fail := not b;
   end;

procedure r(y: real);
   begin
   end;

procedure p(c: array [l..u: boolean] of real);
   begin
   q(f(c));
   r(c[l])
   end;
begin
x[true] := 2.0;
x[false] := 1.0;
p(x);
if fail then
   writeln(' FAIL...6.6.3.7.2-5')
else
   writeln(' PASS...6.6.3.7.2-5')
end.
