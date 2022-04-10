{TEST 6.1.5-2, CLASS=CONFORMANCE}

{: This program simply tests if very long numbers are permitted. }
{  The value should be representable despite its length. }
{V3.0: 4-digit check added. Spaces added in writes. }

program t6p1p5d2(output);
const
   reel = 123.456789012345678901234567890123456789;
begin
   if (reel > 123.5) or
      (reel < 123.4) then
      writeln(' FAIL...6.1.5-2')
   else
      writeln(' PASS...6.1.5-2')
end.
