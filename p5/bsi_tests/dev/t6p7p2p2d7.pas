{TEST 6.7.2.2-7, CLASS=DEVIANCE}

{: Arithmetic operations should not be allowed with Boolean
   operands. }
{V3.0: New test. (Complements 6.7.2.3-2). }

program t6p7p2p2d7(output);
var
   i,j : boolean;
begin
   i:=true; j:=false;
   i:=i*j;
   i:=i*1;
   i:=i+j;
   i:=i+1;
   i:=-j;
   writeln(' DEVIATES...6.7.2.2-7')
end.
