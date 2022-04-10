{TEST 6.8.1-1, CLASS=DEVIANCE}

{: This test checks whether jumps between branches of an
   if-statement are allowed. }
{V3.1: Test renumbered was 6.8.2.4-2. }

program t6p8p1d1(output);
label
   1,2;
var
   i:integer;
begin
   i:=5;
   if (i<10) then
      goto 1
   else
      1:write(' DEVIATES...6.8.1-1,');
   if (i>10) then
      2:writeln(' GOTO ALTERNATE BRANCH OF IF')
   else
     goto 2
end.
