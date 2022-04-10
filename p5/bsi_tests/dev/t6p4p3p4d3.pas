{TEST 6.4.3.4-3, CLASS=DEVIANCE}

{: This test contains declarations of a set, whose base-type is
   a record. }
{  The Pascal Standard states that the base-type of the range
   of a set must be an ordinal-type. This should eliminate sets with
   real and structured ranges. Some processors may allow these and
   hence will deviate if program is not flagged as error. }
{V3.1: This test split from 6.4.3.4-3. }

program t6p4p3p4d3(output);
type
   settwo   = set of record a : 0..3 end;
begin
   writeln(' DEVIATES...6.4.3.4-3')
end.
