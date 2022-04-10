{TEST 6.8.2.2-1, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 6}

{: This program determines whether selection of a variable involving
   the indexing of an array occurs before or after the evaluation
   of the expression in an assignment-statement. }
{V3.1: Reclassified from IMPLEMENTATIONDEFINED. }

program t6p8p2p2d1(output);
var
   i : integer;
   a : array[1..3] of integer;
function sideeffect(var i:integer) : integer;
begin
   i:=i+1;
   sideeffect:=i
end;

begin
   writeln(' OUTPUT FROM TEST...6.8.2.2-1');
   writeln(' TEST OF BINDING ORDER (A[I] := EXPRESSION)');
   i:=1;
   a[1]:=0;
   a[2]:=0;
   a[i]:=sideeffect(i);
   if a[1]=2 then
      writeln(' SELECTION THEN EVALUATION')
   else
      if a[2]=2 then
         writeln(' EVALUATION THEN SELECTION');
   writeln(' IMPLEMENTATION DEPENDENT...6.8.2.2-1')
end.
