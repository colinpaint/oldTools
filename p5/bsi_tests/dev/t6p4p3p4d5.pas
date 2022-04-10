{TEST 6.4.3.4-5, CLASS=DEVIANCE}

{: This test contains declarations of sets, whose base-types are
   arrays. }
{  The Pascal Standard states that the base-type of the range
   of a set must be an ordinal-type. This should eliminate sets with
   real and structured ranges. Some processors may allow these and
   hence will deviate if program is not flagged as an error. }
{V3.1: This test split from 6.4.3.4-3. }

program t6p4p3p4d5(output);
type
   urray    = array[1..4] of integer;
   setthree = set of array[1..5] of char;
   setfour  = set of urray;
begin
   writeln(' DEVIATES...6.4.3.4-5')
end.
