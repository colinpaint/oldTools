{TEST 6.6.1-1, CLASS=CONFORMANCE}

{: This program simply tests the syntax for procedures. }

program t6p6p1d1(output);
var
   a : integer;
   b : real;
procedure withparameters(g : integer; h : real);
var
   c : integer;
   d : real;
begin
   c:=g;
   d:=h
end;

procedure parameterless;
begin
   write(' PASS...6.6.1-1')
end;

begin
   a:=1;
   b:=2;
   withparameters(a,b);
   parameterless;
   writeln
end.
