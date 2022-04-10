{TEST 6.1.6-5, CLASS=DEVIANCE}

{: Labels whose integral values lie outside the range
   0..9999 should be rejected. }
{V3.0: New test. }

program t6p1p6d5(output);
label 10000, 9999, 999, 99, 9;
begin
goto 10000;
9: goto 9999;
99: goto 999;
999: goto 9;
10000: goto 99;
9999: writeln(' DEVIATES...6.1.6-5')
end.
