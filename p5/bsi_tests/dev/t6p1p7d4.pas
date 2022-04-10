{TEST 6.1.7-4, CLASS=DEVIANCE}

{: This program tests that strings of different lengths are
   not compatible (i.e. 1..m and 1..n). }
{V3.0: Comment and writing revised. }

program t6p1p7d4(output);
const
   string1 = 'STRING1';
var
   string2 : packed array[1..5] of char;
begin
   string2:=string1;
   writeln(' DEVIATES...6.1.7-4')
end.
