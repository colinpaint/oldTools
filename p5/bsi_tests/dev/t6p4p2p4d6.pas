{TEST 6.4.2.4-6, CLASS=DEVIANCE}

{: A subrange-type is not permitted in an enumerated-type
   definition. }
{V3.1: New test from BNI. }

program t6p4p2p4d6(output);
type
   bool=(false..true);
var
   v:bool;
begin
   v:=false;
   writeln(' DEVIATES...6.4.2.4-6')
end.
