{TEST 6.4.3.2-8, CLASS=QUALITY}

{: This test checks that 8 index-types can appear in an
   array-type. }
{V3.0: New test. }

program t6p4p3p2d8(output);
type
   t1 = 0 .. 1;
   t2 = 1 .. 2;
   t3 = 2 .. 3;
   t4 = 3 .. 4;
   t5 = 4 .. 5;
   t6 = 5 .. 6;
   t7 = 6 .. 7;
   t8 = 7 .. 8;
   ta = array[ t1, t2, t3, t4, t5, t6, t7, t8] of integer;
var
   a: ta;
begin
a[0, 1, 2, 3, 4, 5, 6, 7] := 1;
a[1, 2, 3, 4, 5, 6, 7, 8] := a[0, 1, 2, 3, 4, 5, 6, 7] + 1;
if a[1, 2, 3, 4, 5, 6, 7, 8] = 2 then
   writeln(' QUALITY...6.4.3.2-8')
else
   writeln(' FAIL...6.4.3.2-8')
end.
