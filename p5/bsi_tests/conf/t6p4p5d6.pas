{$s}
{TEST 6.4.5-6, CLASS=CONFORMANCE}

{: This test checks that if two types are declared identical,
   they inherit all properties in common, including operators and
   special attributes. }
{  This is checked by an analogue of type boolean. }
{V3.0: Comment and writes revised. Was previously 6.4.5-12. }

program t6p4p5d6(output);
const
   on=true;
   off=false;
type
   logical=boolean;
var
   test:integer;
   b1,b2:boolean;
   l1,l2:logical;
begin
   test:=0;
   b1:=true;   b2:=off;
   l1:=true;   l2:=off;
   if l2 then test:=test+1;
   l2:=b2;
   if b1=b2 then test:=test+1;
   b2:=l2;
   if b2 or l2 then test:=test+1;
   if test=0 then
      writeln(' PASS...6.4.5-6')
   else
      writeln(' FAIL...6.4.5-6')
end.
