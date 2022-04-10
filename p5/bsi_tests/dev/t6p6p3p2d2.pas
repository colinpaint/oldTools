{TEST 6.6.3.2-2, CLASS=DEVIANCE}

{: The assignment compatibility rules prohibit a type with a
   file component being used as a value parameter. }
{V3.0: New test. }

program t6p6p3p2d2(output);

procedure p( x: text);
   begin
   writeln(x, ' DEVIATES...6.6.3.2-2')
   end;
begin
   p(output)
end.
