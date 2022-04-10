{TEST 6.7.2.5-6, CLASS=DEVIANCE}

{: Tests of equality on records or arrays should not be permitted. }
{V3.0: New test. }

program t6p7p2p5d6(output);
const pi = 3.141592653589;
var  a, b : array[1..10] of real ;
     c, d: record
             f1 : integer ;
             f2 : real
           end;
     i: integer ;
begin
   for i := 1 to 10 do
      a[i] := pi * 1.0;
   b := a;
   with c do
      begin
      f1 := 3;  f2 := pi
      end;
   d := c;
   if (a = b) and not(c <> d) then
      writeln(' DEVIATES...6.7.2.5-6, EQUALITY ARRAYS/RECORDS')
   else
      writeln(' DEVIATES...6.7.2.5-6, ARRAY/RECORD EQUALITY DEVIANCE')
end.
