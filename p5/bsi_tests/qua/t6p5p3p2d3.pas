{TEST 6.5.3.2-3, CLASS=QUALITY}

{: This program checks that array indices can be nested 10 deep. }
{V3.0: New test. }

program t6p5p3p2d3(output);
var
   ok: boolean;
   i : integer;
   c : array [1 .. 3] of integer;
begin
   for i := 1 to 3 do
      c[i] := i + 1;
   ok := true;
   for i := 1 to 3 do
if c[c[c[c[c[c[c[c[c[c[i]-1]-1]-1]-1]-1]-1]-1]-1]-1]
              <> i + 1 then
         ok := false;
   if ok then
      writeln(' QUALITY...6.5.3.2-3')
   else
      writeln(' FAIL...6.5.3.2-3')
end.
