{TEST 6.4.3.1-3, CLASS=DEVIANCE}

{: The syntax for Pascal allows only structured-types to be
   packed (array, set, file and record types). }
{V3.0: Changed comment to emphasize that syntax is being checked.
   Was previously 6.4.3.1-1. }

program t6p4p3p1d3(output);
type
   switch = packed(on,off);
   state  = packed(high,low,invalid);
   decade   = packed 0..10;
begin
   writeln(' DEVIATES...6.4.3.1-3')
end.
