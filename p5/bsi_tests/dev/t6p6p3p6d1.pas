{TEST 6.6.3.6-1, CLASS=DEVIANCE}

{: This test checks that constants are not permitted as var
   parameters. }

program t6p6p3p6d1(output);
const
   x=1;
var
   y:integer;
procedure assign(var p:integer);
begin
   p:=100
end;

begin
   assign(y);
   assign(x);   {disallowed}
   writeln(' DEVIATES...6.6.3.6-1')
end.
