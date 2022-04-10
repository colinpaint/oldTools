{TEST 6.6.1-2, CLASS=CONFORMANCE}

{: This program tests the implementation of forward directives,
   recursive activation, and multilevel referencing of a var
   parameter in procedures. }
{V3.1: Output of FAIL added. }

program t6p6p1d2(output);
var
   c : integer;

procedure one(var a : integer);
   forward;

procedure two(var b : integer);
begin
   b:=b+1;
   one(b)
end;

procedure one;
begin
   a:=a+1;
   if a = 1 then two(a)
end;

begin
   c:=0;
   one(c);
   if c = 3 then
      writeln(' PASS...6.6.1-2')
  else
     writeln(' FAIL...6.6.1-2')
end.
