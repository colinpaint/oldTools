{TEST 6.6.5.2-11, CLASS=ERRORHANDLING, NUMBER= 15}

{: This test causes an error by using 'get' on an undefined file. }
{V3.1: New test. }

program t6p6p5p2d11(output);
var
   f : file of char;
begin
   get(f);
   writeln(' ERROR...6.6.5.2-11');
   writeln(' ERROR NOT DETECTED')
end.
