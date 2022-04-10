{TEST 6.4.5-14, CLASS=DEVIANCE}

{: This program checks that integer and real var parameters are
  distinct. }
{V3.1: Write changed. }

program t6p4p5d14(output);
var i: integer; x: real;

procedure p( var y: real; var j: integer );
   begin
   y := 1.5;  j := 2
   end;

begin
i := 3; x := 4.5;
p( i, x);
writeln(' THE VALUE OF I IS ', i);
writeln(' THE VALUE OF X IS ', x);
writeln(' DEVIATES...6.4.5-14 ')
end.
