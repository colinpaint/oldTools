{TEST 6.9.4-3, CLASS=DEVIANCE}

{: This test deviates by applying writeln to a non-text file. }
{  The procedure writeln may only be applied to files of the
   required type text. }
{V3.1: New test. }

program t6p9p4d3(output);
type
   sneak = file of char;
var
   dirty : sneak; { Not a textfile }
begin
   rewrite(dirty);
   writeln(dirty); { Not allowed }
   writeln(' DEVIATES...6.9.4-3')
end.
