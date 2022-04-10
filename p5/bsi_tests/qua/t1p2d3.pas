{TEST 1.2-3, CLASS=QUALITY}

{: This program is a test on the speed of procedure calls. }
{  Par for the course is 30 machine instructions per call. See
   Software P and E, Vol 7  pp317-329 (1977) }
{V3.0: New test based on Algol 60 test 73. }

program t1p2d3(output);
var
   i, j, k, k1: integer;
   failed: boolean;

function ackermann(m, n: integer): integer;
   begin
   if m = 0 then
      ackermann := n + 1
   else if n = 0 then
      ackermann := ackermann(m - 1, 1)
   else
      ackermann := ackermann(m - 1, ackermann(m, n - 1))
   end;

begin
   k := 16;
   k1 := 1;
   failed := false;
   for i := 1 to 6 do
      begin
      j := ackermann( 3, i);
      if j <> k - 3 then
         failed := true;
      j := trunc((512.0*k1 - 15.0*k + 9.0*i + 37.0)/3.0);
      writeln(' NO OF CALLS: ',j);
      k1 := 4 * k1;
      k := 2 * k
      end;
   if failed then
      writeln(' FAIL...1.2-3')
   else
      writeln(' QUALITY...1.2-3')
end.
