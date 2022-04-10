{TEST 6.4.5-4, CLASS=CONFORMANCE}

{: This test checks that string types with the same number
   of components are compatible. }
{  Was previously 6.4.5-8. }
{V3.1: Writes changed. }

program t6p4p5d4(output);
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..4] of char;
begin
   string1:='ABCD';
   string2:='EFGH';
   if 'ABC' = 'ABC' then
      if string1 <> string2 then
         writeln(' PASS...6.4.5-4')
      else
         writeln(' FAIL...6.4.5-4, STRINGS(1)')
   else
      writeln(' FAIL...6.4.5-4, STRINGS(2)')
end.
