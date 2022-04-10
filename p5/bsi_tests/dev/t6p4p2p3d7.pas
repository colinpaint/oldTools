{TEST 6.4.2.3-7, CLASS=DEVIANCE}

{: Integers are not allowed in an enumerated-type. }
{V3.1: New test from BNI. }

program t6p4p2p3d7(output);
type
   status=(0,1,2);
var
   s:status;
begin
   s:=0;
   writeln(' DEVIATES...6.4.2.3-7')
end.
