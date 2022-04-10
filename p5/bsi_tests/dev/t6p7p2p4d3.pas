{TEST 6.7.2.4-3, CLASS=DEVIANCE}

{: This program is invalid since there are no monadic operators
   on sets. }
{V3.0: New test. }

program t6p7p2p4d3(output);
var r, s, t: set of 1..10;
begin
   r := [1];
   s := [];
   t := +r;
   r := -s;
   writeln(' DEVIATES...6.7.2.4-3')
end.
