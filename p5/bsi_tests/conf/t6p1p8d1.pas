{TEST 6.1.8-1, CLASS=CONFORMANCE}

{: This test checks that a comment may be used as a token separator. }
{V3.0: Comment revised. }

program{ Can this be here. }t6p1p8d1(output){ Or here. };
var
   i{ control variable }:{ colon }integer{ type };
begin
   for{ This is a FOR loop }i{ control variable }:={ assignment }
      1{ initial }to{ STEP 1 UNTIL }1{ final }do{ GO }
         writeln{ write statement }(' PASS...6.1.8-1')
end.
