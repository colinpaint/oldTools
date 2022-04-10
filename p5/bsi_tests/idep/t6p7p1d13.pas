{TEST 6.7.1-13, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 3}

{: This test contains an implementation-dependency in the order of
   evaluation of member-designators of a set-constructor. }
{V3.1: New test. }

program t6p7p1d13(output);
const min=0; max=15;
type
   IT      = min..max;
var
   evar : set of IT;
   seed,i : IT;
   etab : array[IT] of IT;

   function horrible:IT;
   begin horrible:=succ(seed); seed:=pred(seed) end;

begin
   for i:=min to max do etab[i]:=i;
   seed:=7;
   evar:=[seed,etab[horrible]];
   { Values could be [7,8]    text order
                     [6,8]    reverse order
                     or other or not defined. }
   writeln(' IMPLEMENTATION DEPENDENT...6.7.1-13')
end.
