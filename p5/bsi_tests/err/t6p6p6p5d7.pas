{TEST 6.6.6.5-7, CLASS=ERRORHANDLING, NUMBER=42}

{: This test causes an error by applying the eoln function
   to a file f while eof(f) is true. }
{V3.0: New test. }

program t6p6p6p5d7(output);
var
   f       : text;
   a,b,c,d : char;
begin
   rewrite(f);
   writeln(f,'ABC');
   reset(f);
   read(f,a,b,c);
   readln(f);
   if not eoln(f) then     {illegal}
      read(f,d);
   writeln(' ERROR...6.6.6.5-7');
   writeln(' ERROR NOT DETECTED')
end.
