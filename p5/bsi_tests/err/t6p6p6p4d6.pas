{TEST 6.6.6.4-6, CLASS=ERRORHANDLING, NUMBER=39}

{: This program causes an error to occur as the function pred
   is applied to the first value of an ordinal-type. }
{  The error should be detected at run-time or earlier. }
{V3.0: Writes revised. Was previously 6.6.6.4-5. }

program t6p6p6p4d6(output);
type
   enumerated = (first,second,third,fourth,last);
var
   ordinal : enumerated;
begin
   ordinal:=first;
   if pred(ordinal) < first then ;
   writeln(' ERROR...6.6.6.4-6');
   writeln(' ERROR NOT DETECTED')
end.
