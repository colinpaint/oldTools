{TEST 6.9.3.5.2-1, CLASS=CONFORMANCE}

{: This program checks that the fixed point representation of
   real numbers is correctly written to textfiles. }
{V3.1: Program parameter removed. }

program t6p9p3p5p2d1(output);
var
   f : text;
   b : packed array[1..23] of char;
   i : integer;
begin
   rewrite(f);
   write(f,0.0:4:1,1.0:6:1,-1.0:6:1,123.456:7:3);
   writeln(f);
   reset(f);
   for i:=1 to 23 do
      read(f,b[i]);
   if b=' 0.0   1.0  -1.0123.456' then
      writeln(' PASS...6.9.3.5.2-1')
   else
      writeln(' FAIL...6.9.3.5.2-1')
end.
