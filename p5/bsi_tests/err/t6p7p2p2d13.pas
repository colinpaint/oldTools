{TEST 6.7.2.2-13, CLASS=ERRORHANDLING, NUMBER=45}

{: This program incorporates the error of j being negative in
   the expression i div j. }
{V3.0: New test. }

program t6p7p2p2d13(output);
var
   i, j, l : integer;
begin
   for i := -10 to 10 do
      for j := 2 downto -2 do
         if j = 0 then
            l := i div j;
   writeln(' ERROR...6.7.2.2-13');
   writeln(' ERROR NOT DETECTED')
end.
