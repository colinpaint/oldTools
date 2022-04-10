{TEST 6.7.1-11, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 2}

{: This program determines the order of evaluation of the
   expressions of a member-designator. }
{V3.1: New test. }

program t6p7p1d11(output);
var
   st: packed array [ 1 .. 3 ] of char;
   count: 1 .. 4;
   x: set of 0 .. 2;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   count := count + 1;
   sideeffect := i;
   end;
begin
   count := 1;
   st := '   ';
   writeln(' OUTPUT FROM TEST...6.7.1-11');
   write(' ORDER OF EVALUATION OF (. A, B, C .) IS ');
   x := [sideeffect('A',0),sideeffect('B',1),sideeffect('C',2)];
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.7.1-11')
end.
