{TEST 6.4.2.3-3, CLASS=CONFORMANCE}

{: This program illustrates the difficulties of when a type is
   defined. }
{  It is valid Pascal, since the uses follow
   the defining point. }
{V3.0: New test. }

program t6p4p2p3d3(output);
var
   x: array [(male, female), male .. female ] of integer;
begin
x[male, male] := 1;
if x[pred(female), pred(female)] <> 1 then
   writeln(' FAIL...6.4.2.3-3')
else
   writeln(' PASS...6.4.2.3-3')
end.
