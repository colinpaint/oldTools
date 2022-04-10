{$s}
{TEST 6.4.2.2-8, CLASS=CONFORMANCE}

{: This test checks that ord of an integer is the integer
   itself. }
{V3.0: New test. }

program t6p4p2p2d8(output);
var
   result:(pass,fail);
   i:integer;
begin
   result:=pass;
   for i:=-100 to +100 do
      if ord(i) <> i then result:=fail;
   if (ord(-0) <> 0) or (ord(maxint) <> maxint) or
      (ord(-maxint) <> -maxint) then result := fail;
   if result=pass then
      writeln(' PASS...6.4.2.2-8')
   else
      writeln(' FAIL...6.4.2.2-8')
end.
