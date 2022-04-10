{TEST 6.6.6.4-5, CLASS=ERRORHANDLING, NUMBER=38}

{: This program causes an error to occur as the
   function succ is applied to the last value
   of an ordinal-type. }
{  The error should be detected at run-time or earlier. }
{V3.1: Assignment added and test changed. }

program t6p6p6p4d5(output);
type
   enumerated = (first,second,third,last);
var
   ordinal : enumerated;
begin
   ordinal:= last;
   ordinal:=pred(succ(ordinal));
   writeln(' ERROR...6.6.6.4-5');
   writeln(' ERROR NOT DETECTED')
end.
