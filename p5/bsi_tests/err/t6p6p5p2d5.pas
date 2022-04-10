{TEST 6.6.5.2-5, CLASS=ERRORHANDLING, NUMBER=16}

{: This program causes an error to occur as eof(fyle) does
   not yield false prior to execution of a get on the file. }
{  The error should be detected at run-time or earlier. }
{V3.1: Program comments deleted. }

program t6p6p5p2d5(output);
var
   fyle : text;
begin
   rewrite(fyle);
   writeln(fyle,'ABC');
   reset(fyle);
   get(fyle);
   get(fyle);
   get(fyle);
   get(fyle);
   get(fyle);           { error since eof is true }
   writeln(' ERROR...6.6.5.2-5');
   writeln(' ERROR NOT DETECTED')
end.
