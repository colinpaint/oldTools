{TEST 6.3-3, CLASS=DEVIANCE}

{: This program checks that signed strings are not permitted. }
{  Note that minus may have a worse effect than plus. }

program t6p3d3(output);
const
   stars = '****';
   plusstars = + stars;
begin
   writeln(' DEVIATES...6.3-3, SIGNED STRING ( PLUSSTARS = ',
      plusstars, ')')
end.
