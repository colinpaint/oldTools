{TEST 6.6.3.7.3-8, CLASS=LEVEL1, SUBCLASS=QUALITY}

{: This program checks whether a conformant array schema can
   accommodate 8 index-type specifications. }
{V3.1: Was test 6.6.3.7-10. }

program t6p6p3p7p3d8(output);
type
   bin = 0..1;
var
   bigarray:array[0..1,0..1,0..1,0..1,0..1,0..1,0..1,0..1] of integer;
procedure p(var a : array[l1..h1 : bin; l2..h2 : bin;
                          l3..h3 : bin; l4..h4 : bin;
                          l5..h5 : bin; l6..h6 : bin;
                          l7..h7 : bin; l8..h8 : bin] of integer);
   begin
   a[l1][h2][l3][h4][l5][h6][l7][h8] :=
                                         h1+l2+h3+l4+h5+l6+h7+l8
   end;
begin
   p(bigarray);
   if bigarray[0,1,0,1,0,1,0,1] = 4 then
      writeln(' QUALITY...6.6.3.7.3-8')
   else
      writeln(' FAIL...6.6.3.7.3-8')
end.
