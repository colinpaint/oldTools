{TEST 6.4.2.4-5, CLASS=DEVIANCE}

{: This program checks that strings are rejected in a subrange
   declaration. }
{V3.0: New test. }

program t6p4p2p4d5(output);
type
   firstindex = 'AB' .. 'CD';
begin
   writeln(' DEVIATES...6.4.2.4-5')
end.
