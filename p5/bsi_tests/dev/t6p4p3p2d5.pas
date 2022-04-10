{TEST 6.4.3.2-5, CLASS=DEVIANCE}

{: Strings must have a subrange of integers as an index-type. }
{  It is incorrect to have a subrange of an enumerated-type as
   the index-type, even if the ord of the lower bound is one. }
{V3.1: Comment changed. }

program t6p4p3p2d5(output);
type
   colour = (red,blue,yellow,green);
   cl1 = blue..green;
var
   s:packed array[cl1] of char;
begin
   s:='ABC';
   writeln(' DEVIATES...6.4.3.2-5')
end.
