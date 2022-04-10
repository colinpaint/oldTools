{TEST 6.7.1-5, CLASS=QUALITY}

{: This test contains a deeply nested expression requiring
   temporary working store. }
{V3.0: New test. }

program t6p7p1d5(output);
var i, j, k : integer;
begin
i := 2;
j := 3;
k := 5;
i := (((i + j) - (k + 3)) * ((k - j) + (i - 10))) +
   (((i + j) mod(2 * k)) div((k + i) + (-3 * j)));
if i = 16 then
   writeln(' QUALITY...6.7.1-5')
else
   writeln(' FAIL...6.7.1-5')
end.
