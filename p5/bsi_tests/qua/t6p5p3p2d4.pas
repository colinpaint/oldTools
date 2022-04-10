{TEST 6.5.3.2-4, CLASS=QUALITY}

{: This test checks that 8-dimensional arrays are permitted. }
{V3.0: New test. }

program t6p5p3p2d4(output);
var
   v: array [0 .. 1] of array [0 .. 1] of array [0 .. 1] of
      array [0 .. 1] of array [0 .. 1] of array [0 .. 1] of
      array [0 .. 1] of array [0 .. 1] of integer;
begin
   v[0][0][0][0][0][0][0][0] := 0;
   v[1, 1, 1, 1, 1, 1, 1, 1] := 1;
   if (v[1][1][1][1][1][1][1][1] <> 1) or
      (v[0, 0, 0, 0, 0, 0, 0, 0] <> 0) then
      writeln(' FAIL...6.5.3.2-4')
   else
      writeln(' QUALITY...6.5.3.2-4')
end.
