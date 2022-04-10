{TEST 6.7.1-7, CLASS=CONFORMANCE}

{: This test checks that the set-constructor can denote both packed and
   unpacked set types in the appropriate contexts. }
{V3.1: New test. }

program t6p7p1d7(output);
type
   ET      = (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P);
   IT      = 0..15;
var
   enormal :        set of ET;
   epakked : packed set of ET;
   cnormal :        set of char;
   cpakked : packed set of char;
   inormal :        set of IT;
   ipakked : packed set of IT;
begin
   enormal := []; epakked := [];
   cnormal := []; cpakked := [];
   inormal := []; ipakked := [];
   enormal := [D,C..H,N];
   epakked := [D,C..H,N];
   cnormal := ['D','C'..'H','N'];
   cpakked := ['D','C'..'H','N'];
   inormal := [3,2..6,13];
   ipakked := [3,2..6,13];
   if (enormal=[C..N]-[I..M]) and (epakked=[C..N]-[I..M]) and
      (cnormal=['C'..'N']-['I'..'M']) and
      (cpakked=['C'..'N']-['I'..'M']) and
      (inormal=[2..13]-[7..12]) and (inormal=[2..13]-[7..12])
   then
      writeln(' PASS...6.7.1-7')
   else
      writeln(' FAIL...6.7.1-7')
end.
