{TEST 6.4.3.3-18, CLASS=DEVIANCE}

{: This test deviates since all values of a tag-type of a record
   must appear as case-constants. }
{V3.1: New test from BNI. }

program t6p4p3p3d18(output);
type
   colour=(pink,red,green,blue,yellow);
   colored=record
              case c:colour of
                 pink:(p:array [1..2] of colour);
                 red:(r:array [1..3] of colour);
                 blue,yellow:(b:array [1..5] of colour);
           end;
begin
   writeln(' DEVIATES...6.4.3.3-18')
end.
