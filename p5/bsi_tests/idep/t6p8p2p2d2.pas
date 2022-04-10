{TEST 6.8.2.2-2, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 6}

{: This program determines whether selection of a variable involving
   the dereferencing of a pointer occurs before or after the
   evaluation of the expression in an assignment-statement. }
{V3.1: Reclassified from IMPLEMENTATIONDEFINED. }

program t6p8p2p2d2(output);
type
   poynter = ^rekord;
   rekord=record
            a : integer;
            b : boolean;
            link : poynter
         end;
var
   temp, ptr : poynter;
function sideeffect(var p : poynter) : integer;
begin
   p:=p^.link;
   sideeffect:=2
end;

begin
   writeln(' OUTPUT FROM TEST...6.8.2.2-2');
   writeln(' TEST OF BINDING ORDER (P^ := EXPRESSION)');
   new(ptr);
   ptr^.a:=1;
   ptr^.b:=true;
   new(temp);
   ptr^.link:=temp;
   temp^.a:=0;
   temp^.b:=false;
   temp:=ptr;
   ptr^.a:=sideeffect(ptr);
   if temp^.a=2 then
      writeln(' SELECTION THEN EVALUATION')
   else
      if temp^.link^.a=2 then
         writeln(' EVALUATION THEN SELECTION');
   writeln(' IMPLEMENTATION DEPENDENT...6.8.2.2-2')
end.
