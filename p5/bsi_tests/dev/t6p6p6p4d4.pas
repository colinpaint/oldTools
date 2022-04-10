{TEST 6.6.6.4-4, CLASS=DEVIANCE}

{: This test checks that succ and pred cannot be applied to
   real values. }
{V3.0: Write revised. Was previously 6.6.6.4-6. }

program t6p6p6p4d4(output);
var
   x:real;
begin
   x:=0.3;
   if (succ(x)>x) and (pred(x)<x) then
      writeln(' DEVIATES...6.6.6.4-4, REAL SUCC/PRED')
   else
      writeln(' DEVIATES...6.6.6.4-4, MESS - SUCC/PRED')
end.
