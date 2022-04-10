{TEST 6.6.5.2-9, CLASS=ERRORHANDLING, NUMBER= 12}

{: This test causes an error by applying 'put' to an undefined
   buffer-variable. }
{V3.1: New test. }

program t6p6p5p2d9(output);
type
   fyle = file of char;
var
   f : fyle;
begin
   rewrite(f);
   f^ := 'Z';
   put(f);
   put(f);
   writeln(' ERROR...6.6.5.2-9');
   writeln(' ERROR NOT DETECTED')
end.
