{TEST 6.6.6.3-4, CLASS=ERRORHANDLING, NUMBER=36}

{: This program causes an error to occur as the result
   returned by the round function exceeds maxint. }
{  The error should be detected at run-time. }
{V3.0: Altered comment, and altered test so that loop is
  not needed.
  Writes revised. Also, test corrected so that it uses
  the round function and not the trunc function.
  Was previously 6.6.6.3-3. }

program t6p6p6p3d4(output);
var
   reel : real;
   i    : integer;
begin
   reel := maxint;
   i := round(reel*1.5);
   writeln(' ERROR...6.6.6.3-4');
   writeln(' ERROR NOT DETECTED')
end.
