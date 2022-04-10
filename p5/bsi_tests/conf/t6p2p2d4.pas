{TEST 6.2.2-4, CLASS=CONFORMANCE}

{: This test checks that labels are allowed to be redefined
   in a region enclosed by the first scope. }
{V3.0: Comment changed and write extended. Was previously 6.2.2-5. }

program t6p2p2d4(output);
label
   4,5,6;
var
   i : integer;
procedure redefine;
label
   6,7,8;
var
   j : integer;
begin
      j:=1;
      goto 6;
   7: j:=j-1;
      goto 8;
   6: j:=j+1;
      goto 7;
   8: j:=0
end;

begin
      goto 4;
   5: i:=i+1;
      goto 6;
   4: i:=1;
      redefine;
      goto 5;
   6: if i=1 then
         writeln(' FAIL...6.2.2-4')
      else
         writeln(' PASS...6.2.2-4')
end.
