{TEST 6.6.3.7.3-4, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that the actual parameter corresponding to
   a variable conformant array is not an expression. }
{V3.1: New test. }

program t6p6p3p7p3d4(output);

var
   x: array[10..11] of integer;
procedure p(var a: array [l..u: integer] of integer);
   begin
   end;
begin
p((x));
writeln(' DEVIATES...6.6.3.7.3-4')
end.
