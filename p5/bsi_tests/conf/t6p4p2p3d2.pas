{TEST 6.4.2.3-2, CLASS=CONFORMANCE}

{: This test checks ordering of an enumerated-type. }
{  The Pascal Standard states that the ordering of the values
   of the enumerated-type is determined by the sequence in which
   the constants are listed, the first being before the last.
   The Standard also specifies the ordinal values. }
{V3.0: Added succ(succ(succ(club))). Comment and writing
   revised to conform to conventions, and test revised to check
   that the ordinal values also conform. }

program t6p4p2p3d2(output);
var
   suit : (club,spade,diamond,heart);
   a    : boolean;
   b    : boolean;
   c    : boolean;
begin
   a:=(succ(club)=spade) and
      (succ(spade)=diamond) and
      (succ(diamond)=heart) and
      (succ(succ(succ(club))) = heart);

   b:=(club < spade) and
      (spade < diamond) and
      (diamond < heart);

   c:=(ord(club)=0) and (ord(spade)=1) and
      (ord(diamond)=2) and (ord(heart)=3);

   if a and b and c then
      writeln(' PASS...6.4.2.3-2')
   else
      writeln(' FAIL...6.4.2.3-2')
end.
