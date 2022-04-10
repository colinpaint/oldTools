{TEST 6.7.2.5-1, CLASS=CONFORMANCE}

{: This program tests the use of relational operators on strings. }
{  The operators denote lexicographic ordering according to the
   ordering of the character set. }
{V3.0: Writes for FAIL revised. }

program t6p7p2p5d1(output);
type
   string=packed array[1..7] of char;
var
   string1,
   string2 : string;
begin
   string1:='STRING1';
   string2:='STRING2';
   if (string1<>string2) and (string1<string2) then
   begin
      string1:='STRINGS';
      string2:='STRINGZ';
      if (string1<>string2) and (string1<string2) then
         writeln(' PASS...6.7.2.5-1')
      else
         writeln(' FAIL...6.7.2.5-1, STRING COMPARISON(1)')
   end
   else
      writeln(' FAIL...6.7.2.5-1, STRING COMPARISON(2)')
end.
