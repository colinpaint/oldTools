{TEST 6.4.6-3, CLASS=CONFORMANCE}

{: This program tests that an index expression is assignment-compatible
   with the index-type specified in the definition of the array-type. }
{V3.0: Comment revised. }

program t6p4p6d3(output);
type
   colour = (red,pink,orange,yellow,green);
   intensity = (bright,dull);
var
   array1 : array[yellow..green] of boolean;
   array2 : array[colour] of intensity;
   array3 : array[1..99] of integer;
   colour1 : red..yellow;
   i      : integer;
begin
   array1[yellow]:=true;
   colour1:=yellow;
   array1[colour1]:=false;
   array2[colour1]:=bright;
   array3[1]:=0;
   i:=2;
   array3[i*3+2]:=1;
   writeln(' PASS...6.4.6-3')
end.
