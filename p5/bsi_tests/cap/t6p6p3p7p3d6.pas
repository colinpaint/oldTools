{TEST 6.6.3.7.3-6, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that an array which is a component of a packed type
   cannot be passed as an actual parameter to a variable conformant
   array. }
{V3.1: New test}

program t6p6p3p7p3d6(output);

var
   x: packed record
      i: integer;
      a: array [1..3] of boolean;
      end;
procedure p(var b: array [l..u: integer] of boolean);
   begin
   end;
begin
p(x.a);
writeln(' DEVIATES...6.6.3.7.3-6')
end.
