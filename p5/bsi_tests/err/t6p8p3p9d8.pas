{TEST 6.8.3.9-8, CLASS=ERRORHANDLING, NUMBER= 52}

{: This test causes an error since the initial-value of the
   for-statement violates the assignment-compatibility rules. }
{V3.1: New test. }

program t6p8p3p9d8(output);
type
   colour = (red,blue,green,yellow);
   subcolour = blue..yellow;
var
   col1 : colour;
   col2 : subcolour;
   i : integer;
begin
   i := 0;
   col1 := blue;
   for col2 := pred(col1) to yellow do
      i := succ(i);
   writeln(' ERROR...6.8.3.9-8');
   writeln(' ERROR NOT DETECTED')
end.
