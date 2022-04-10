{TEST 6.8.3.9-22, CLASS=ERRORHANDLING, NUMBER= 43}

{: This test causes an error by using a control-variable after
   an unexecuted for-statement. }
{  A control-variable is undefined after a for-statement even if
   the statement controlled by the for-statement is not executed.
   If the error is not detected it explores the nature of the value
   of the control-variable which has been preserved. }
{V3.1: Reclassified from DEVIANCE and comment changed.
   Renumbered from 6.8.3.9-9. }

program t6p8p3p9d22(output);
var
   i,j,k,m:integer;
begin
   i:=100;
   k:=1;
   m:=0;
   j:=10;
   for i:=j to k do
      m:=m+1;
   if i=k+1 then
      writeln(' CONTROL VARIABLE VALUE = FINAL VALUE + 1')
   else
      if i=k then
         writeln(' CONTROL VARIABLE VALUE = FINAL VALUE')
      else
         if i=j then
            writeln(' CONTROL VARIABLE VALUE = INITIAL VALUE')
         else
            writeln(' CONTROL VARIABLE DEFINED BUT VALUE UNKNOWN');
   writeln(' ERROR NOT DETECTED');
   writeln(' ERROR...6.8.3.9-22')
end.
