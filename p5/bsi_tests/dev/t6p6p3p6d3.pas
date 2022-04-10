{TEST 6.6.3.6-3, CLASS=DEVIANCE}

{: This test checks that parameter list congruity
   is correctly implemented. }
{V3.1: Compatibility changed to congruity in comment. }

program t6p6p3p6d3(output);
type
   natural = 0..maxint;

procedure actual(i:integer; n:natural);
begin
   i:=n
end;

procedure p(procedure formal(var a:integer;b:natural));
var
   k,l:integer;
begin
   k:=1; l:=2;
   formal(k,l)
end;

begin
   p(actual);
   writeln(' DEVIATES...6.6.3.6-3')
end.
