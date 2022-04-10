{TEST 6.7.2.5-3, CLASS=CONFORMANCE}

{: This test checks the use of relational operations on long
   strings. }
{  No semantic problems but the long strings could cause
   implementation difficulties. }
{V3.0: New test. }

program t6p7p2p5d3(output);
var s1, s2: packed array [1..37] of char;
    i, j: integer;
begin
   s1 := 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA';
   s2 := s1;
   j := 0;
   if s1 <> s2 then
      j := j + 1;
   for i := 37 downto 1 do
      begin
      s2[i] := 'B';
      if (s2 = s1) or (s2 < s1) then
         j := j + 1
      else if s2 <= s1 then
         j := j + 1
      else if s1 > s2 then
         j := j + 1
      end;
   if s2 <> 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB' then
      j := j + 1;
   if j = 0 then
      writeln(' PASS...6.7.2.5-3')
   else
      writeln(' FAIL...6.7.2.5-3')
end.
