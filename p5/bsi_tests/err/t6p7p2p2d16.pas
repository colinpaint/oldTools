{TEST 6.7.2.2-16, CLASS=ERRORHANDLING, NUMBER= 44}

{: This test causes an error since in the expression x/y
   y has the value zero. }
{V3.1: New test. }

program t6p7p2p2d16(output);
var
   x,y : integer;
   z : real;
begin
   x := 4;
   y := x*x - (x+12);
   z := x/y;      { error  since y = 0 }
   writeln(' ERROR...6.7.2.2-16');
   writeln(' ERROR NOT DETECTED')
end.
