{TEST 6.1.7-3, CLASS=CONFORMANCE}

{: This program checks that a apostrophe-image can appear as a char
   constant and as an element of a string. }
{V3.0: Program and comment revised to become a more strict
   test for the feature. }

program t6p1p7d3(output);
const
   quote = '''';
var
   s:packed array[1..5]of char;
begin
   s:='CAN''T';
   if (s[4]=quote)and(s[5]='T') then
      writeln(' PASS...6.1.7-3')
   else
      writeln(' FAIL...6.1.7-3')
end.
