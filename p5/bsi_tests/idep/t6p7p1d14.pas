{TEST 6.7.1-14, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 3}

{: This program determines the order of evaluation of the
   expressions of a set-constructor. }
{V3.1: New test. }

program t6p7p1d14(output);
var
   st: packed array [ 1 .. 2 ] of char;
   count: 1 .. 3;
   x: set of 0 .. 2;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   count := count + 1;
   sideeffect := i;
   end;
begin
   count := 1;
   st := '  ';
   writeln(' OUTPUT FROM TEST...6.7.1-14');
   write(' ORDER OF EVALUATION OF (. A .. B .) IS ');
   x := [sideeffect('A',0) .. sideeffect('B',1)];
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.7.1-14')
end.
