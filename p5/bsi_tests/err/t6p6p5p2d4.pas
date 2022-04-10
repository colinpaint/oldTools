{TEST 6.6.5.2-4, CLASS=ERRORHANDLING, NUMBER=11}

{: This program causes an error to occur, as eof(fyle) does
   not yield true prior to execution of a put on the file. }
{  The error should be detected at run-time or earlier. }
{V3.1: Comment in program changed. }

program t6p6p5p2d4(output);
var
   fyle : text;
begin
   rewrite(fyle);
   writeln(fyle,'ABC');
   reset(fyle);      { eof is false and fyle^='A' }
   put(fyle);        { causes an error }
   writeln(' ERROR...6.6.5.2-4');
   writeln(' ERROR NOT DETECTED')
end.
