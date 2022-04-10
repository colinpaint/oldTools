{TEST 6.7.2.5-7, CLASS=DEVIANCE}

{: This test checks that equality and non-equality is not
   permitted between different pointer-types. }
{V3.1: New test. }

program t6p7p2p5d7(output);
type
   one = ^integer;
   two = ^integer;
var
   x: one;
   y: two;
begin
   new(x);
   x^ := 2;
   new(y);
   y^ := 3;
   if (x <> y) or not (x = y) then
      writeln(' DEVIATES...6.7.2.5-7, PERMITTED')
   else
      writeln(' DEVIATES...6.7.2.5-7');
end.
