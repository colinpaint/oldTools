{TEST 6.1.7-7, CLASS=DEVIANCE}

{: Character-strings should not be compatible with
   packed arrays of subranges of char. }
{V3.0: Comment and writing revised. }

program t6p1p7d7(output);
type
   alpha = 'A'..'Z';
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..4] of alpha;
begin
   string1:='FOUR';
   string2:='FOUR';
   writeln(' DEVIATES...6.1.7-7')
end.
