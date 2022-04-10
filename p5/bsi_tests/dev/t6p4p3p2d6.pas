{TEST 6.4.3.2-6, CLASS=DEVIANCE}

{: The notation '[  ][  ]' is allowed for indexed-variables,
   but not for index-type definitions. }
{V3.1: New test from BNI. }

program t6p4p3p2d6(output);
type
   ar=array[1..10][1..5] of integer;
begin
   writeln(' DEVIATES...6.4.3.2-6')
end.
