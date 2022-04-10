{TEST 6.6.2-7, CLASS=ERRORHANDLING, NUMBER=48}

{: This program contains a function with an assignment to its
   identifier, however the assignment is never executed. }
{  The Pascal Standard states that the result of a function will
   be the last value assigned to its identifier. If no assignment
   occurs then the result is undefined. }
{V3.1: Renumbered from 6.6.2-9. }

program t6p6p2d7(output);
var
   radius ,
   circlearea : real;
function area(a : real) : real;
var
   x : real;
begin
   if a > 0 then x:=3.1415926*a*a
            else area:=0
end;

begin
   radius:=2;
   circlearea:=area(radius);
   writeln(' ERROR...6.6.2-7');
   writeln(' ERROR NOT DETECTED')
end.
