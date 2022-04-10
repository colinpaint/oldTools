{TEST 6.6.3.7.3-1, CLASS=LEVEL1, SUBCLASS=CONFORMANCE}

{: This program checks that a conformant array schema can be nested
   within itself. }
{V3.1: Was test 6.6.3.7-2. }

program t6p6p3p7p3d1(output);
var
   fail: boolean;
   sum: integer;
   a: array[1..2] of array[-2..-1] of integer;
procedure access(var f: array[low1..high1: integer] of
                        array[low2..high2: integer] of integer);
   var
      i, j: integer;
   begin
   if (low1 <> 1) or (high1 <> 2) or
      (low2 <> -2 ) or (high2 <> -1) then
      fail := true;
   sum := 0;
   for i := low1 to high1 do
   for j := low2 to high2 do
     sum := sum + f[i,j]
   end;
begin
   fail := false;
   a[1,-2] := 1;
   a[1,-1] := 2;
   a[2,-2] := 3;
   a[2,-1] := 4;
   access(a);
   if (sum <> 10) or fail then
      writeln(' FAIL...6.6.3.7.3-1')
   else
      writeln(' PASS...6.6.3.7.3-1')
end.
