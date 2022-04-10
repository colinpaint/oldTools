{TEST 6.6.5.4-9, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER=11}

{: This program determines the order and number of evaluations
   of the parameters of the procedure unpack. }
{V3.1: New test. }

program t6p6p5p4d9(output);
type
   str = packed array [ 1 .. 3 ] of char;
var
   st: packed array [ 1 .. 7 ] of char;
   count: 1 .. 7;
   a: array [ 1 .. 1 ] of array [ 1 .. 3 ] of char;
   z: array [ 1 .. 1 ] of str;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   if count < 7 then
      count := count + 1;
   sideeffect := i;
   end;
begin
   count := 1;
   z[1] := 'XYZ';
   st := '       ';
   writeln(' OUTPUT FROM TEST...6.6.5.4-9');
   write(' ORDER OF EVALUATION OF UNPACK(Z,A,I) IS ');
   unpack(z[sideeffect('Z',1)], a[sideeffect('A',1)],
        sideeffect('I',1) );
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.6.5.4-9')
end.
