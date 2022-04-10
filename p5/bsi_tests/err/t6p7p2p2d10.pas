{TEST 6.7.2.2-10, CLASS=ERRORHANDLING, NUMBER=47}

{: This program causes an error to occur as the result of a dyadic
   integer operation is less than -maxint. }
{V3.0: Comment and writes revised. Was previously 6.7.2.2-7. }

program t6p7p2p2d10(output);
var
   i : integer;
begin
   i:=(-maxint-(-maxint div 2))*2-2;
   writeln(' ERROR...6.7.2.2-10');
   if (odd(-maxint) and (i-(-maxint) = -3)) or
      (not odd(-maxint) and (i-(-maxint) = -2)) then
      writeln(' TEST NOT RELEVANT')
   else
      writeln(' ERROR NOT DETECTED')
end.
