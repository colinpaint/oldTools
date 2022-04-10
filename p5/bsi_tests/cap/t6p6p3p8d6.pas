{TEST 6.6.3.8-6, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that two strings of the same length
   cannot be passed as actual parameters to one schema
   because they are not of the same type, albeit structurally
   similar. }
{V3.1: New test. }

program t6p6p3p8d6(output);
const
   st1 = 'abc';
   st2 = 'xyz';
procedure p ( a, b: packed array [l1..u1: integer] of char);
   begin
   end;
begin
p(st1, st2);
writeln(' DEVIATES...6.6.3.8-6')
end.
