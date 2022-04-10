{TEST 6.6.1-5, CLASS=DEVIANCE}

{: This program tests if the processor allows the formal parameter
   list to be included in the subsequent procedure declaration of
   a forward procedure. }
{V3.0: Write elaborated. Was previously 6.6.1-4. }

program t6p6p1d5(output);
var
   c : integer;

procedure one(var a : integer);
   forward;

procedure two(var b : integer);
begin
   b:=b+1;
   one(b)
end;

procedure one(var a : integer);
begin
   a:=a+1;
   if a = 1 then two(a)
end;

begin
   c:=0;
   one(c);
   writeln(' DEVIATES...6.6.1-5')
end.
