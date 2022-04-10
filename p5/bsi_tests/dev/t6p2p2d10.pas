{TEST 6.2.2-10, CLASS=DEVIANCE}

{: This program attempts to assign a value to a function outside
   the block of the function. }
{V3.0: Comment changed to read 'block' instead of 'bounds'.
   Was previously 6.2.2-9. }

program t6p2p2d10(output);
var
   i:integer;

function f1:integer;
begin
   f1:=6
end;

function f2(i:integer):integer;
begin
   f2:=i;
   f1:=5
end;

begin
   i:=f1;
   i:=f2(2);
   writeln(' DEVIATES...6.2.2-10')
end.
