{TEST 6.5.3.2-6, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 1}

{: This program determines the evaluation order of
   indexed-expressions of an indexed-variable. }
{V3.1: New test. }

program t6p5p3p2d6(output);
var
   st: packed array [ 1 .. 3 ] of char;
   count: 1 .. 4;
   v: array [ 1..1, 1..1, 1..1 ] of integer;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   count := count + 1;
   sideeffect := i;
   end;
begin
   st := '   ';
   count := 1;
   writeln(' OUTPUT FROM TEST...6.5.3.2-6');
   write(' EVALUATION ORDER OF V(.A,B,C.) IS ');
   v[sideeffect('A',1),sideeffect('B',1),sideeffect('C',1)] := 1;
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.5.3.2-6')
end.
