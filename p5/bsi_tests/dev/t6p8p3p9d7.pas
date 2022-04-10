{TEST 6.8.3.9-7, CLASS=DEVIANCE}

{: This program checks that the threat to the control-variable of a
   for-statement posed by the use of the variable in a procedure
   contained in the block is detected. }
{V3.1: Comment changed and actual call to procedure deleted. }

program t6p8p3p9d7(output);
var
   i,j:integer;

procedure nestedthreat;
begin
   i:=i+1
end;

begin
   j:=0;
   for i:= 1 to 10 do
      j:=j+1;
   writeln(' DEVIATES...6.8.3.9-7')
end.
