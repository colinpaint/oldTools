{TEST 6.1.7-6, CLASS=DEVIANCE}

{: This program tests that strings are not compatible
   with packed arrays whose bounds are other than 1..n. }
{V3.0: Comment and writing revised. }

program t6p1p7d6(output);
var
   string1 : packed array[1..4] of char;
   string2 : packed array[0..3] of char;
   string3 : packed array[2..5] of char;
begin
   string1:='STR1';
   string2:='STR2';
   string3:='STR3';
   writeln(' DEVIATES...6.1.7-6')
end.
