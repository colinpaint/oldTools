{TEST 6.6.1-7, CLASS=DEVIANCE}

{: This program tests the processors actions for a procedure
   declared as forward, but no matching subsequent procedure
   declaration for the forward procedure occurs. }
{V3.0: Semi-colon added before writeln(' DEVIATES
   Comment tidied up. Was previously 6.6.1-6. }

program t6p6p1d7(output);
var
   c : integer;

procedure two(var b : integer);
   forward;

procedure one(var a : integer);
begin
   a:=a+1;
   if a = 1 then two(a)
end;

begin
   c:=0;
   one(c);
   writeln(' DEVIATES...6.6.1-7')
end.
