{TEST 6.6.3.7.3-5, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that the actual parameter corresponding to a
   variable conformant array is not a string. }
{V3.1: New test. }

program t6p6p3p7p3d5(output);

const
   str = 'abc';
procedure p(var st: packed array [l..u: integer] of char);
   begin
   end;
begin
p(str);
writeln(' DEVIATES...6.6.3.7.3-5')
end.
