{TEST 6.4.3.4-1, CLASS=CONFORMANCE}

{: This program simply tests that set-types are permitted. }
{V3.0: Comment revised. }

program t6p4p3p4d1(output);
type
   colour   = (red,blue,pink,green,yellow);
   setone   = set of colour;
   settwo   = set of blue..green;
   setthree = set of boolean;
   setfour  = set of 1..10;
   setfive  = set of 0..3;
   setsix   = set of (heart,diamond,spade,club);
begin
   writeln(' PASS...6.4.3.4-1')
end.
