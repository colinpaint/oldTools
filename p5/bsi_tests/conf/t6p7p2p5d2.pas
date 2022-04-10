{TEST 6.7.2.5-2, CLASS=CONFORMANCE}

{: This test checks the use of relational operators on sets. }
{V3.0: Write for PASS shortened. }

program t6p7p2p5d2(output);
var
   a,b:set of 0..10;
  c,counter:integer;
begin
   counter:=0;
   a:=[0,1,2,3,4,5];
   b:=[2,3,4];
   c:=3;
   if(a=[0,1,2,3,4,5]) then
     counter:=counter+1;
   if(a<>b) then
      counter:=counter+1;
   if(b<>[1,2,3,4,5]) then
      counter:=counter+1;
   if(b<=a) then
      counter:=counter+1;
   if(a>=b) then
      counter:=counter+1;
   if([0,1]<=a) then
      counter:=counter+1;
   if([1,2,3,4,5,6,10]>=b) then
      counter:=counter+1;
   if (1 in a) then
      counter:=counter+1;
   if(c in b) then
      counter:=counter+1;
   if(counter=9) then
      writeln(' PASS...6.7.2.5-2')
   else
      writeln(' FAIL...6.7.2.5-2')
end.
