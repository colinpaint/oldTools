{TEST 6.6.5.2-6, CLASS=ERRORHANDLING, NUMBER= 14}

{: This program checks for detection of the error of doing a get
   on a file immediately following a rewrite. }
{V3.0: New test. }

program t6p6p5p2d6(output);
var
   fyle : text;
begin
   rewrite(fyle);
   writeln(fyle,'ABC');
   rewrite(fyle);
   get(fyle);          {causes an error}
   writeln(' ERROR...6.6.5.2-6');
   writeln(' ERROR NOT DETECTED')
end.
