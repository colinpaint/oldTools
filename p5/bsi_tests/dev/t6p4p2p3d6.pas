{TEST 6.4.2.3-6, CLASS=DEVIANCE}

{: An empty identifier-list is not permitted in an enumerated-type
   definition. }
{V3.1: New test from BNI. }

program t6p4p2p3d6(output);
type
   empty=( );
begin
   writeln(' DEVIATES...6.4.2.3-6')
end.
