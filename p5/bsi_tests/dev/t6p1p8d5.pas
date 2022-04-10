{TEST 6.1.8-5, CLASS=DEVIANCE}

{: This program deviates because a space does not appear between
   a number and a word-symbol even though it is clearly
   unambiguous. }
{  Many processors are expected to deviate
   on this program. A check that the
   character which delimits a number is not
   alphabetic will suffice to detect the error. }
{V3.1: Comment changed. }

program t6p1p8d5(output);
var
   i: integer;
begin
   i := 10div 2;
   writeln(' DEVIATES...6.1.8-5')
end.
