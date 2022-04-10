{TEST 6.6.5.2-17, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER=10}

{: This program determines the number of evaluations of the
   file parameter of the procedure write. }
{V3.1: New test. }

program t6p6p5p2d17(output);
type
   chfile = file of char;
var
   count: integer;
   x: array [ 1 .. 1 ] of chfile;
   ch: char;

function sideeffect(i: integer): integer;
   begin
   count := count + 1;
   sideeffect := i;
   end;
begin
   count := 0;
   writeln(' OUTPUT FROM TEST...6.6.5.2-17');
   write(' NUMBER OF EVALUATIONS OF F IN WRITE(F,A,B,C) IS ');
   rewrite( x[1] );
   write( x[sideeffect(1)], 'A', 'B', 'C' );
   writeln(count:2);
   writeln(' IMPLEMENTATION DEPENDENT...6.6.5.2-17')
end.
