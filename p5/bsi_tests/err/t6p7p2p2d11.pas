{TEST 6.7.2.2-11, CLASS=ERRORHANDLING, NUMBER=46}

{: This program causes an error to occur as the second operand
   of the mod operator is 0. }
{V3.0: Writes revised. Was previously 6.7.2.2-8. }

program t6p7p2p2d11(output);
var
   i, j, k : integer;
begin
   i:=6;
   j:=0;
   k:=i mod j;       { an error as j=0 }
   writeln(' ERROR...6.7.2.2-11');
   writeln(' ERROR NOT DETECTED')
end.
