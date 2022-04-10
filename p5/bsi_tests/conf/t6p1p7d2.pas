{TEST 6.1.7-2, CLASS=CONFORMANCE}

{: This program tests if strings are permitted up to a length of
   68 characters. }
{  The Pascal Standard does not place an upper limit
   on the length of strings. }
{V3.0: Check on value added. Writes revised. }

program t6p1p7d2(output);
type
   string1 = packed array[1..68] of char;
   string2 = packed array[1..33] of char;
var
   alpha : string1;
   i     : string2;
begin
   alpha:=
'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOP'
 ;
   i:='IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII';
   if (alpha[9] = i[32]) then
      writeln(' PASS...6.1.7-2')
   else
      writeln(' FAIL...6.1.7-2')
end.
