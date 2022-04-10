{TEST 6.6.5.2-8, CLASS=ERRORHANDLING, NUMBER= 10}

{: This test causes an error by applying 'page' to a text file
   whose value is undefined. }
{V3.1: New test. }

program t6p6p5p2d8(output);
var
   f : text;
begin
   page(f);
   writeln(' ERROR...6.6.5.2-8');
   writeln(' ERROR NOT DETECTED')
end.
