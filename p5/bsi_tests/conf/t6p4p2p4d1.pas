{TEST 6.4.2.4-1, CLASS=CONFORMANCE}

{: This program tests that a type may be defined as a subrange
   of another ordinal-type (host-type). }
{V3.0: Comment revised. }

program t6p4p2p4d1(output);
type
   colour      = (red,pink,orange,yellow,green,blue);
   somecolour  = red..green;
   century     = 1..100;
   twentyone   = -10..+10;
   digits      = '0'..'9';
   zero        = 0..0;
   logical     = false..true;
var
   tf : logical;

begin
   tf:=true;
   writeln(' PASS...6.4.2.4-1')
end.
