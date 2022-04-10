{TEST 6.4.3.2-3, CLASS=CONFORMANCE}

{: This program tests that an array can have extreme index
   values as its first (and only in this case) valid value. }
{V3.0: New test. }

program t6p4p3p2d3(output);
var
   small: array[ -maxint .. -maxint] of integer;
   large: array[  maxint ..  maxint] of integer;
begin
   small[-maxint] := 1;
   large[maxint] := small[-maxint];
   if large[maxint] <> 1 then
      writeln(' FAIL...6.4.3.2-3')
   else
      writeln(' PASS...6.4.3.2-3')
end.
