{TEST 6.8.3.9-6, CLASS=DEVIANCE}

{: This test checks that the threat to the control-variable posed by
   its use as an actual parameter is detected. }
{  The call of procedure verynasty makes this program illegal. }
{V3.1: Comment changed and body of procedure verynasty deleted. }

program t6p8p3p9d6(output);
var
   i,j:integer;

procedure verynasty (var n:integer);
begin
end;

begin
   j:=0;
   for i:=1 to 10 do
   begin
      j:=j+1;
      verynasty(i)
   end;
   writeln(' DEVIATES...6.8.3.9-6')
end.
