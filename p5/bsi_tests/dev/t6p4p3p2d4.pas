{TEST 6.4.3.2-4, CLASS=DEVIANCE}

{: This program tests if the processor will allow real
   array-bounds. }
{  The Pascal Standard states that an index-type must be an
   ordinal-type. This does not include REAL. }
{V3.0: Comment and writing revised. Was previously 6.4.3.2-2. }

program t6p4p3p2d4(output);
type
   reeltest = array[1.5..10.1] of real;
begin
   writeln(' DEVIATES...6.4.3.2-4')
end.
