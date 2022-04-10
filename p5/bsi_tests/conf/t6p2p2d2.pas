{TEST 6.2.2-2, CLASS=CONFORMANCE}

{: This test checks if a predefined identifier can be redefined. }
{V3.0: Failure message altered to give reason. }

program t6p2p2d2(output);
var
   true : boolean;
begin
   true:=false;
   if true = false then
      writeln(' PASS...6.2.2-2')
   else
      writeln(' FAIL...6.2.2-2')
end.
