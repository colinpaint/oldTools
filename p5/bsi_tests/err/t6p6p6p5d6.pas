{TEST 6.6.6.5-6, CLASS=ERRORHANDLING, NUMBER=40}

{: This test checks for the error of the parameter to the eof
   function being undefined. }
{V3.0: New test. }

program t6p6p6p5d6(output);
var
   fyle    : text;
   endfyle : boolean;
begin
   endfyle:=eof(fyle);     {error}
   writeln(' ERROR...6.6.6.5-6');
   writeln(' ERROR NOT DETECTED')
end.
