{TEST 6.4.2.4-3, CLASS=DEVIANCE}

{: This program deviates since real constants are not permitted
   in a subrange declaration. }
{  The Pascal Standard states that a subrange definition must be
   of a subrange of another ordinal-type. This rules out real
   constants in the definition. }
{V3.0: Writing revised. Was previously 6.4.2.4-2. }

program t6p4p2p4d3(output);
type
   wiregauge = 0.001..0.2;
begin
   writeln(' DEVIATES...6.4.2.4-3')
end.
