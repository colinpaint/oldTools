{TEST 6.6.3.7.2-6, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that a value conformant array cannot be passed
   on as an actual parameter to another value conformant array. }
{V3.1: New test. }

program t6p6p3p7p2d6(output);

var
   i: integer;
   x: array [boolean] of char;
function fact (c: array [l..u: boolean] of char; n: integer):integer;
   begin
   if n=1 then
      fact := 1
   else
      fact := n * fact (c, n-1)
   end;
begin
x[false] := 'a'; x[true] := 'b';
i := fact(x, 5);
writeln(' DEVIATES...6.6.3.7.2-6')
end.
