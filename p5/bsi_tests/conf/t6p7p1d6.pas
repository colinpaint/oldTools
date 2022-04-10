{TEST 6.7.1-6, CLASS=CONFORMANCE}

{: This test examines valid productions of set-constructors. }
{  There is no restriction in the Pascal Standard on the use of
   expressions as factors in a set-constructor (provided that they
   yield legal set elements). This test checks 5 such productions. }
{V3.1: New test from BNI. }

program t6p7p1d6(output);
const
   three=3;
type
   colour=(blue,green,red,yellow);
var
   n,c:integer;
   p1,p2:^integer;
begin
   n:=2;
   c:=0;
   new(p1); p1^:=5;
   new(p2); p2^:=7;
   if [0..7]=[0*1..2*three+1] then
         c:=c+1;
   if [0..3,2..4]=[0..4] then
         c:=c+1;
   if [1,2,n,succ(n),1]=[1..3] then
         c:=c+1;
   if [green,yellow,blue..red]=[blue..yellow] then
         c:=c+1;
   if [p1^..p2^]=[5,6,7] then
         c:=c+1;
   if c=5 then writeln(' PASS...6.7.1-6')
          else writeln(' FAIL...6.7.1-6')
end.
