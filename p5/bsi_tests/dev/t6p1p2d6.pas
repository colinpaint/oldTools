{TEST 6.1.2-6, CLASS=DEVIANCE}

{: This program deviates because spaces appear within the five
   special symbols. }
{  A processor with cunning error recovery may be able to
   accept the program, but should be able to detect the errors. }
{V3.1: Comment changed. }

program t6p1p2d6(output);
var
   i: 1 . . 2;
begin
   i : = 1;
   if (i < = 2) and (i > = 0) then
      writeln(' DEVIATES...6.1.2-6, TOKENS 1')
   else if i < > 1 then
      writeln(' DEVIATES...6.1.2-6, TOKENS 2')
   else
      writeln(' DEVIATES...6.1.2-6, TOKENS 3')
end.
