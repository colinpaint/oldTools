{TEST 6.1.6-1, CLASS=CONFORMANCE}

{: This program simply tests if labels are permitted. }
{V3.0: Test revised so as to include the limits of the closed
   interval of 'apparent values' by which labels are distinguished. }

program t6p1p6d1(output);
label
   0,2,3,4,9999;
var
   x:(a,b,c,d,e,f);
begin
      x := a;
      goto 4;
   0: x := succ(x);
      goto 9999;
   2: x := succ(x);
      goto 3;
   3: x := succ(x);
      goto 0;
   4: x := succ(x);
      goto 2;
9999: x := succ(x);
      if x = f then
         writeln(' PASS...6.1.6-1')
      else
         writeln(' FAIL...6.1.6-1')
end.
