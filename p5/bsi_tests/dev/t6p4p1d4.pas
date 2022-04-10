{TEST 6.4.1-4, CLASS=DEVIANCE}

{: This program applies an undefined type to a variable to
   determine whether the processor deviates by assumption
   of some default type. }
{V3.0: New test. }

program t6p4p1d4(output);
var
   a : atype;     {undefined}
begin
   writeln(' DEVIATES...6.4.1-4')
end.
