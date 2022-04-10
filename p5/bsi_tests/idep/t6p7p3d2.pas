{TEST 6.7.3-2, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 5}

{: This program determines the order of evaluation of the
   actual parameters of a function-designator. }
{V3.1: New test. }

program t6p7p3d2(output);
var
   st: packed array [ 1 .. 4 ] of char;
   count: 1 .. 5;
   x: integer;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   count := count + 1;
   sideeffect := i;
   end;
function f(i, j: integer): integer;
   begin
   f := i + j
   end;
begin
   count := 1;
   st := '    ';
   writeln(' OUTPUT FROM TEST...6.7.3-2');
   write(' ORDER OF EVALUATION OF F(F(A,B),F(C,D)) IS ');
   x := f(f(sideeffect('A',0),sideeffect('B',1)),
          f(sideeffect('C',0),sideeffect('D',1)));
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.7.3-2')
end.
