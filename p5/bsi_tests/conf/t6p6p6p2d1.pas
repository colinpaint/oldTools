{TEST 6.6.6.2-1, CLASS=CONFORMANCE}

{: This program tests the implementation of the arithmetic
   function abs. Both real and integer expressions are used. }
{  Note: There is also a QUALITY test of the abs function carried
   out as part of test 6.7.2.2-15. }
{V3.0: Superfluous const pi removed. Write for FAIL revised.
   Comment expanded. }

program t6p6p6p2d1(output);
var
   i, counter : integer;
   r : real;
function myabs1(i : integer):integer;
   begin
      if i<0 then
         myabs1:=-i
      else
         myabs1:=i
   end;
function myabs2(r:real):real;
   begin
      if r<0 then
         myabs2:=-r
      else
         myabs2:=r
   end;
begin
   counter:=0;
   for i:=-10 to 10 do
   begin
      if abs(i)=myabs1(i) then
         counter:=counter+1
   end;

   r:=-10.3;
   while r<10.3 do
   begin
      if abs(r)=myabs2(r) then
         counter:=counter+1;
      r:=r+0.9
   end;

   if counter=44 then
      writeln(' PASS...6.6.6.2-1')
   else
      writeln(' FAIL...6.6.6.2-1')
end.
