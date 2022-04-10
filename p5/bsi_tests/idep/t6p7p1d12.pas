{TEST 6.7.1-12, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 3}

{: This test contains an implementation-dependency in the order of
   evaluation of expressions in a member-designator of a
   set-constructor. }
{V3.1: New test. }

program t6p7p1d12(output);
type
   ET      = (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P);
var
   evar : set of ET;
   seed : ET;

   function nasty:ET;
   begin seed:=pred(seed); nasty:=seed end;

   function horrible:ET;
   begin seed:=succ(succ(seed)); horrible:=seed end;

begin
   seed:=F;
   evar:=[nasty..horrible];
   { Values could be [E..G]    text order
                     [G..H]    reverse order
                     [E..H]    simultaneous
                     or other or not defined }
   writeln(' OUTPUT FROM TEST...6.7.1-12');
   write(' ORDER OF EVALUATION OF (. A..B .) IS ');
   if evar = [E..G] then
      writeln('AB')
   else if evar = [G..H] then
      writeln('BA')
   else if evar = [E..H] then
      writeln('SIMULTANEOUS')
   else
      writeln('UNKNOWN');
   writeln(' IMPLEMENTATION DEPENDENT...6.7.1-12')
end.
