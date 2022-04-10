{TEST 6.9.3.4-1, CLASS=CONFORMANCE}

{: This test checks the implementation of integer output. }
{V3.1: Program parameter removed. }

program t6p9p3p4d1(output);
var
   f:text;
   b:packed array [1..26] of char;
   i:integer;
begin
   rewrite(f);
   write(f,0:3,1:3,-1:3,10:3,99:3,100:3,-100:3,1111:3);
   writeln(f);
   reset(f);
   for i:=1 to 26 do
      read(f,b[i]);
   if (b='  0  1 -1 10 99100-1001111') then
      writeln(' PASS...6.9.3.4-1')
   else
      writeln(' FAIL...6.9.3.4-1')
end.
