{TEST 6.1.6-2, CLASS=CONFORMANCE}

{: This test checks that labels are distinguished by their
   apparent integral-value. }
{V3.0: Test improved, space inserted in write. }

program t6p1p6d2(output);
label
   5,0006,7;
begin
      goto 05;
   6: goto 7;
   5: goto 6;
 007: writeln(' PASS...6.1.6-2')
end.
