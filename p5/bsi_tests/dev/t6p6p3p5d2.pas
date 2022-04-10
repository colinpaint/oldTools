{TEST 6.6.3.5-2, CLASS=DEVIANCE}

{: This test checks functional compatibility in that
   function-types are required to be identical. }

program t6p6p3p5d2(output);
type
   natural=0..maxint;
var
   k:integer;

function actual(i:natural):natural;
begin
   actual:=i
end;

procedure p(function formal(i:natural):integer);
begin
   k:=formal(10)
end;

begin
   p(actual);
   writeln(' DEVIATES...6.6.3.5-2')
end.
