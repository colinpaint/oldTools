{TEST 6.4.2.2-9, CLASS=DEVIANCE}

{: This program is erroneous since it relies on the indexing of
   a character string literal. }
{  Although character-strings have the type attributes of an array,
   they are not variables and should not be indexable. }
{V3.0: New test. }

program t6p4p2p2d9(output);
var
   ch: char;
begin
   ch := 'HELLO'[3];
   writeln(' DEVIATES...6.4.2.2-9')
end.
