{TEST 6.2.2-7, CLASS=CONFORMANCE}

{: This program hides part of a type while leaving other parts
   accessible. }
{V3.0: Comment revised and writes rewritten. Was previously 6.2.2-10.}

program t6p2p2d7(output);
type
   colour=(red,amber,green);
var
   c:colour;

procedure nested;
type
   colour=(purple,red,blue);
var
   paint:colour;
begin
   c:=green;
   paint:=red;
   c:=pred(amber);
   if (ord(c)<>0) or (ord(paint)<>1) then
      writeln(' FAIL...6.2.2-7')
end;

begin
   nested;
   if (c<> red) then
      writeln(' FAIL...6.2.2-7')
   else
      writeln(' PASS...6.2.2-7')
end.
