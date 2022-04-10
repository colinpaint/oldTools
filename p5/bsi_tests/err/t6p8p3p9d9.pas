{TEST 6.8.3.9-9, CLASS=ERRORHANDLING, NUMBER= 53}

{: This test causes an error since the final-value of the
   for-statement violates the assignment-compatibility rules. }
{V3.1: New test. }

program t6p8p3p9d9(output);
type
   subrange = 1..4;
var
   sub : subrange;
   i,j : integer;
begin
   j := 0;
   i := 3;
   for sub := 1 to i*i do
      j := succ(j);
   writeln(' ERROR...6.8.3.9-9');
   writeln(' ERROR NOT DETECTED')
end.
