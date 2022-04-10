{TEST 6.1.5-4, CLASS=DEVIANCE}

{: This test deviates since the syntax for unsigned-real
   clearly states that a decimal point must be followed by a
   digit-sequence. }
{V3.0: Writing modified to conform to conventions and provide
   more information. }

program t6p1p5d4(output);
var
   i : real;

begin
   i:=0123.;
   writeln(' THE VALUE OF I IS ', i);
   writeln(' DEVIATES...6.1.5-4')
end.
