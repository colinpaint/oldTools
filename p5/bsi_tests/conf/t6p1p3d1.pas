{TEST 6.1.3-1, CLASS=CONFORMANCE}

{: This test checks that identifiers of length up
   to 70 characters are accepted. }
{  The Pascal Standard permits identifiers to be of any length. }
{V3.0: Write on failure modified. }

program t6p1p3d1(output);
const
   i10iiiiiii = 10;
   i20iiiiiiiiiiiiiiiii = 20;
   i30iiiiiiiiiiiiiiiiiiiiiiiiiii = 30;
   i40iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii = 40;
   i50iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii = 50;
   i60iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii = 60;
i70iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
                                                                = 70;

begin
   if i10iiiiiii + i20iiiiiiiiiiiiiiiii +
      i30iiiiiiiiiiiiiiiiiiiiiiiiiii +
      i40iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii +
      i50iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii +
      i60iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii +
i70iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
      <> 280 then
      writeln(' FAIL...6.1.3-1')
   else
      writeln(' PASS...6.1.3-1')
end.
