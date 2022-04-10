{TEST 6.6.6.5-8, CLASS=ERRORHANDLING, NUMBER= 41}

{: This test causes an error by applying eoln(f) while f is
   undefined. }
{V3.1: New test. }

program t6p6p6p5d8(output);
var
   f : text;
   endline : boolean;
begin
   endline := eoln(f);
   writeln(' ERROR...6.6.6.5-8');
   writeln(' ERROR NOT DETECTED')
end.
