{TEST 6.7.2.2-8, CLASS=ERRORHANDLING, NUMBER=45}

{: This program causes an error to occur as the second operand
   of the div operator is 0. }
{  The error should be detected at run-time. }
{V3.0: Writes revised. Was previously 6.7.2.2-3. }

program t6p7p2p2d8(output);
var
   i, j, k : integer;
begin
   i:=6;
   j:=0;
   k:=i div j;       { an error as j=0 }
   writeln(' ERROR...6.7.2.2-8');
   writeln(' ERROR NOT DETECTED')
end.
