{TEST 6.8.3.9-21, CLASS=ERRORHANDLING, NUMBER= 43}

{: This test causes an error by examining the value of a
   control-variable after execution of a for-statement. }
{  The control-variable in this test is undefined after execution
   of the for-statement.
   If the error is not detected it explores the nature of the value
   of the control-variable which has been preserved. }
{V3.1: Reclassified from DEVIANCE and comment changed.
   Renumbered from 6.8.3.9-8. }

program t6p8p3p9d21(output);
var
   i,j,k,m:integer;
begin
   i:=100;
   j:=1;
   k:=10;
   m:=0;
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
   writeln(' ERROR...6.8.3.9-21')
end.
