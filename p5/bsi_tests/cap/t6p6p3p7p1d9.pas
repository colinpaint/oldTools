{TEST 6.6.3.7.1-9, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that type real is not permitted as an
   index-type of a conformant array schema. }
{  Note that this is invalid even if no call is made. }
{V3.1: New test. }

program t6p6p3p7p1d9(output);

procedure p(var x: array [l..u: real] of integer);
   begin
   end;
begin
writeln(' DEVIATES...6.6.3.7.1-9')
end.
