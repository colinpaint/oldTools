{TEST 6.4.6-8, CLASS=DEVIANCE}

{: This program checks that an integer array cannot be assigned
   to a real array although element by element assignment is
   valid. }
{V3.0: New test. }

program t6p4p6d8(output);
var a: array [1 .. 1] of real;
    b: array [1 .. 1] of integer;
begin
b[1] := 1;
a[1] := b[1];
a := b;  { incorrect }
writeln(' DEVIATES...6.4.6-8')
end.
