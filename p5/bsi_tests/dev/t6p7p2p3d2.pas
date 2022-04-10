{TEST 6.7.2.3-2, CLASS=DEVIANCE}

{: Logical operations should not be allowed on integers. }
{V3.0: Duplicated statement corrected. Write revised.
   Was previously 6.7.2.3-4. }

program t6p7p2p3d2(output);
var
  i,j:integer;
begin
   i:=1; j:=2;
   i:=i and j;
   i:=i and 1;
   i:=i or j;
   i:=i or 1;
   i:= not j;
   writeln(' DEVIATES...6.7.2.3-2')
end.
