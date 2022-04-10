{TEST 6.4.3.1-2, CLASS=CONFORMANCE}

{: This program checks if packing is propagated throughout
   an array with multiple-indices. }
{  The Pascal Standard specifies that the packed prefix in front
   of a multiple-index array-type declaration is propagated
   to all levels of the array.  This is difficult to test
   except by exercising deviance tests on the processor by
   attempting to use such a packed object in unsuitable
   contexts.  However, in the case of arrays of char the
   residual structural compatibility allows a conformance test to
   be designed. }
{V3.0: New test to test packing propagation. }

program t6p4p3p1d2(output);
type
   table=packed array[0..99,1..12] of char;
var
   t:table;
   i:0..99;
begin
   for i:=0 to 99 do t[i]:='123456789012';
   writeln(' PASS...6.4.3.1-2')
end.
