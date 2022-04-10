{TEST 6.6.5.3-3, CLASS=DEVIANCE}

{: This program checks that nil cannot be a parameter of new. }
{V3.0: New test. }

program t6p6p5p3d3(output);
begin
   new(nil);
   writeln(' DEVIATES...6.6.5.3-3')
end.
