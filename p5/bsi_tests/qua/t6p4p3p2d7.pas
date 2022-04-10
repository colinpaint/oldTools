{TEST 6.4.3.2-7, CLASS=QUALITY}

{: This program checks that large arrays can be declared. }
{V3.0: New test. }

program t6p4p3p2d7(output);
type
   ar = array[0 .. 1023] of integer;
var
   x: record
      ar1, ar2, ar3, ar4, ar5: ar
      end;
begin
x.ar1[0] := 1;  x.ar1[1023] := - 1;
x.ar2[0] := 2;  x.ar2[1023] := - 2;
x.ar3[0] := 3;  x.ar3[1023] := - 3;
x.ar4[0] := 4;  x.ar4[1023] := - 4;
x.ar5[0] := 5;  x.ar5[1023] := - 5;
if (x.ar1[0] + x.ar1[1023] <> 0) or
   (x.ar2[0] + x.ar2[1023] <> 0) or
   (x.ar3[0] + x.ar3[1023] <> 0) or
   (x.ar4[0] + x.ar4[1023] <> 0) or
   (x.ar5[0] + x.ar5[1023] <> 0) then
   writeln(' FAIL...6.4.3.2-7')
else
   writeln(' QUALITY...6.4.3.2-7')
end.
