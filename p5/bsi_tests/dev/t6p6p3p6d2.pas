{TEST 6.6.3.6-2, CLASS=DEVIANCE}

{: This test checks that parameter list congruity is correctly
   implemented. }
{V3.0: Comment altered - 'congruity' instead of 'compatibility'
   to correspond with Standard. }

program t6p6p3p6d2(output);
type
   natural = 0..maxint;

procedure actual(i:integer; n:natural);
begin
   i:=n
end;

procedure p(procedure formal(a:integer;b:integer));
var
   k,l:integer;
begin
   k:=1; l:=2;
   formal(k,l)
end;

begin
   p(actual);
   writeln(' DEVIATES...6.6.3.6-2')
end.
