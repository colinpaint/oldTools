{TEST 6.1.7-5, CLASS=DEVIANCE}

{: This test deviates since a character-string is not compatible
   with an unpacked array of char. }
{  The Pascal Standard specifically states that
   character-strings are constants of the type packed
   array[1..n] of char. }
{V3.0: Comment and writing revised. }

program t6p1p7d5(output);
var
   string1 : packed array[1..4] of char;
   string2 : array[1..4] of char;
begin
   string1:='STR1';
   string2:='STR2';
   writeln(' DEVIATES...6.1.7-5')
end.
