{TEST 6.1.7-1, CLASS=CONFORMANCE}

{: This test checks the implementation of the required type-char. }
{  Character strings consisting of a single character
   are the constants of the standard type char. }
{V3.0: Writing made to conform to conventions, and comment
   revised. }

program t6p1p7d1(output);
const
   one = '1';
   two = '2';
var
   twotoo : char;
begin
   if (one <> two) and (two = '2') then
      begin
      twotoo:='2';
      if twotoo = two then
         writeln(' PASS...6.1.7-1')
      else
         writeln(' FAIL...6.1.7-1')
      end
   else
      writeln(' FAIL...6.1.7-1')
end.
