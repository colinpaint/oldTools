{TEST 6.6.6.3-3, CLASS=ERRORHANDLING, NUMBER=35}

{: This program causes an error to occur as the result
   returned by the trunc function exceeds maxint. }
{  The error should be detected at run-time. }
{V3.0: Altered test so that the loop is not needed.
   Also altered comment.
   Writes revised. Was previously 6.6.6.3-2. }

program t6p6p6p3d3(output);
var
   reel : real;
   i    : integer;
begin
   reel := maxint;
   i := trunc(reel*1.5);
   writeln(' ERROR...6.6.6.3-3');
   writeln(' ERROR NOT DETECTED')
end.
