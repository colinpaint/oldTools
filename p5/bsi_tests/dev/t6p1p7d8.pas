{TEST 6.1.7-8, CLASS=DEVIANCE}

{: Character-strings should not be compatible with packed
   arrays of subranges of char. }
{  Similar to 6.1.7-7. }
{V3.0: Comment and writing revised. }

program t6p1p7d8(output);
type
   digit = '0'..'9';
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..4] of digit;
begin
   string1:='FOUR';
   string2:='FOUR';
   writeln(' DEVIATES...6.1.7-8')
end.
