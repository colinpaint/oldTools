{TEST 6.4.2.4-2, CLASS=CONFORMANCE}

{: This test checks that the ordinal values of a
   variable of subrange-type correspond to the host-type. }
{  Even if a variable is of a subrange type, the values it may
   take on are of its host enumeration type. }
{V3.0: New test to check ord on subranges. }

program t6p4p2p4d2(output);
type
   chesstype=(pawn,knight,bishop,castle,queen,king);
   piece=knight..king;
   century=1901..2000;
var
   year:century;
   which:piece;
begin
   year:=1980;
   which:=knight;
   if (ord(year)=1980) and (ord(which)=1) then
      writeln(' PASS...6.4.2.4-2')
   else
      writeln(' FAIL...6.4.2.4-2')
end.
