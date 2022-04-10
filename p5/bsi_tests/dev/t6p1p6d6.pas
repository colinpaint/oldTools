{$s}
{TEST 6.1.6-6, CLASS=DEVIANCE}

{: This test contains a label which is not a digit-sequence. }
{V3.1: New test from BNI. }

program t6p1p6d6(output);
label
   a;
begin
   goto a;
   a: writeln(' DEVIATES...6.1.6-6')
end.
