{TEST 6.5.3.2-5, CLASS=QUALITY}

{: This test checks that 8-dimensional arrays are permitted. }
{V3.0: New test. }

program t6p5p3p2d5(output);
type
   t1 = array [0 .. 1] of integer;
   t2 = array [0 .. 1] of t1;
   t3 = array [0 .. 1] of t2;
   t4 = array [0 .. 1] of t3;
   t5 = array [0 .. 1] of t4;
   t6 = array [0 .. 1] of t5;
   t7 = array [0 .. 1] of t6;
   t8 = array [0 .. 1] of t7;
var
   v: t8;
begin
   v[0][0][0][0][0][0][0][0] := 0;
   v[1, 1, 1, 1, 1, 1, 1, 1] := 1;
   if (v[1][1][1][1][1][1][1][1] <> 1) or
      (v[0, 0, 0, 0, 0, 0, 0, 0] <> 0) then
      writeln(' FAIL...6.5.3.2-5')
   else
      writeln(' QUALITY...6.5.3.2-5')
end.
