{TEST 6.4.5-3, CLASS=CONFORMANCE}

{: This program tests that two subranges of the same type with
   no overlap are considered as compatible by the processor. }
{V3.0: Comment and write revised. Was previously 6.4.5-7. }

program t6p4p5d3(output);
type
   color = (red,pink,orange,yellow,green,blue,brown);
var
   col1 : red..yellow;
   col2 : green..brown;
begin
   col1:=yellow;
   col2:=green;
   if col1 < col2 then writeln(' PASS...6.4.5-3')
                  else writeln(' FAIL...6.4.5-3')
end.
