{TEST 6.6.5.2-10, CLASS=ERRORHANDLING, NUMBER= 13}

{: This test causes an error by applying 'reset' to an
   undefined file. }
{V3.1: New test. }

program t6p6p5p2d10(output);
var
   f : file of integer;
begin
   reset(f);
   writeln(' ERROR...6.6.5.2-10');
   writeln(' ERROR NOT DETECTED')
end.
