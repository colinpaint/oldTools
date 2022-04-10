{$s}
{TEST 6.4.2.3-1, CLASS=CONFORMANCE}

{: This program checks the possible syntax productions for
   enumerated types. }
{V3.0: Comment revised. }

program t6p4p2p3d1(output);
type
   singularitytype = (me);
   switch          = (on,off);
   maritalstatus   = (married,divorced,widowed,single);
   colour          = (red,pink,orange,yellow,green);
   cardsuit        = (heart,diamond,spade,club);
var
   i : singularitytype;
begin
   i:=me;
   writeln(' PASS...6.4.2.3-1')
end.
