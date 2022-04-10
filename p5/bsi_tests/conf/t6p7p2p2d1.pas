{TEST 6.7.2.2-1, CLASS=CONFORMANCE}

{: This program checks the operation of the
   operators + - and *. }
{V3.0: Write for FAIL elaborated. }

program t6p7p2p2d1(output);
var
   i, x, y , counter : integer;
begin
   counter := 0;
   for x := -10 to 10 do
   begin
      if (succ(x)=x+1) then
         counter := counter+1;
      if (pred(x) = x-1) then
         counter := counter+1;
      if (x*x=sqr(x)) then
         counter:= counter+1
   end;
   if (counter=63) then
      writeln(' PASS...6.7.2.2-1')
   else
      writeln(' FAIL...6.7.2.2-1')
end.
