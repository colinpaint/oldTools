{TEST 6.6.3.8-5, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that packing is preserved in the conformant
   array schema. }
{V3.1: New test. }

program t6p6p3p8d5(output);

var
   x: packed array [1..3] of real;
procedure p(var a: array [l..u: integer] of real);
   begin
   end;
begin
p(x);
writeln(' DEVIATES...6.6.3.8-5')
end.
