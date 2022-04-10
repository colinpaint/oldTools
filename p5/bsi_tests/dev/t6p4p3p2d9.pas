{TEST 6.4.3.2-9, CLASS=DEVIANCE}

{: This program tests if the processor will allow real
   array-bounds. }
{  The Pascal Standard states that an index-type must be an
   ordinal-type. This does not include REAL. }
{V3.1: New test derived from 6.4.3.2-4. }

program t6p4p3p2d9(output);
type
   reeltest = array[real] of real;
begin
   writeln(' DEVIATES...6.4.3.2-9')
end.
