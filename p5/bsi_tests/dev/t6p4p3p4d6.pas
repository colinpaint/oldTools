{TEST 6.4.3.4-6, CLASS=DEVIANCE}

{: This test contains declarations of sets, whose base-types are
   sets. }
{  The Pascal Standard states that the base-type of the range
   of a set must be an ordinal-type. This should eliminate sets with
   real and structured ranges. Some processors may allow these and
   hence will deviate if program is not flagged as an errors. }
{V3.1: This test split from 6.4.3.4-3. }

program t6p4p3p4d6(output);
type
   legalset = set of 1..3;
   setfour  = set of urray;
   setfive  = set of legalset;
   setsix   = set of set of 1..4;
begin
   writeln(' DEVIATES...6.4.3.4-6')
end.
