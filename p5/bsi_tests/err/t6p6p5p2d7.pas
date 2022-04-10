{TEST 6.6.5.2-7, CLASS=ERRORHANDLING, NUMBER= 9}

{: This test causes an error by using put when the file mode
   is not generation. }
{V3.1: New test. }

program t6p6p5p2d7(output);
type
   fyle = file of integer;
var
   f : fyle;
begin
   rewrite(f);
   f^ := 1234;
   put(f);
   reset(f);
   put(f);
   writeln(' ERROR...6.6.5.2-7');
   writeln(' ERROR NOT DETECTED')
end.
