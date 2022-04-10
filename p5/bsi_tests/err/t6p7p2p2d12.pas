{TEST 6.7.2.2-12, CLASS=ERRORHANDLING, NUMBER=47}

{: This program attempts to output a value which overflows. }
{  It is possible for a conforming processor to output a value
   greater than maxint correctly. This must be checked by
   examination of the output if the error is undetected. }
{V3.1: Comment changed. }

program t6p7p2p2d12(output);
var
   i: integer;
begin
   i := 100;
   writeln(' MAXINT + 100 = ',maxint+i);
   writeln(' ERROR...6.7.2.2-12');
   writeln(' ERROR NOT DETECTED')
end.
