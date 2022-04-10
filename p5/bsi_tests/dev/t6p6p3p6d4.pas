{TEST 6.6.3.6-4, CLASS=DEVIANCE}

{: This test checks that parameter list congruity
   is correctly implemented. }
{V3.1: Compatibility changed to congruity in comment. }

program t6p6p3p6d4(output);
type
   natural = 0..maxint;

procedure actual(var i:integer;var  n:natural);
begin
   i:=n
end;

procedure p(procedure formal(var a:integer;var b:integer));
var
   k,l:integer;
begin
   k:=1; l:=2;
   formal(k,l)
end;

begin
   p(actual);
   writeln(' DEVIATES...6.6.3.6-4')
end.
