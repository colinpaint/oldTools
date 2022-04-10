{TEST 6.9.5-2, CLASS=DEVIANCE}

{: The procedure page may only be applied to textfiles. }
{V3.1: New test. }

program t6p9p5d2(output);
type
   sneak = file of char;
var
   dirty : sneak;
begin
   rewrite(dirty);
   write(dirty,' ');
   page(dirty); { Not allowed }
   writeln(' DEVIATES...6.9.5-2')
end.
