{TEST 6.1.5-3, CLASS=DEVIANCE}

{: This test deviates since the syntax for unsigned-real
   clearly states that a decimal point must be preceded by a
   digit-sequence. }
{V3.0: Writing modified to conform to conventions and provide
   more information. }

program t6p1p5d3(output);
const
   r = .123;
var
   i : real;
begin
   i:=.123;
   i:=-.123;
   writeln(' THE VALUE OF R IS ', r);
   writeln(' THE VALUE OF I IS ', i);
   writeln(' DEVIATES...6.1.5-3')
end.
