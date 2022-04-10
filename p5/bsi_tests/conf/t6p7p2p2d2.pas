{TEST 6.7.2.2-2, CLASS=CONFORMANCE}

{: This program checks that div and mod are implemented by the
   rule specified by the Pascal Standard. }
{V3.1: Comment changed. }

program t6p7p2p2d2(output);
var
   i, j, counter : integer;
begin
   counter:=0;
   for i:=0 to 6 do
      for j:=1 to 4 do
         if ((i-j)<((i div j)*j)) and (((i div j)*j)<=i) then
            counter:=counter+1;
   for i:=0 to 6 do
      for j:=1 to 4 do
         if (i mod j)=(i-(i div j)*j) then
            counter:=counter+1;
   if counter=56 then
      writeln(' PASS...6.7.2.2-2')
   else
      writeln(' FAIL...6.7.2.2-2')
end.
