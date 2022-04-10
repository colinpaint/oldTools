{TEST 6.6.3.5-1, CLASS=CONFORMANCE}

{: This program tests that functions may be passed to procedures
   and functions as parameters. }
{  Similar to 6.6.3.4-1. }
{V3.0: Test modified slightly to add write for FAIL. }

program t6p6p3p5d1(output);
var
   i,counter : integer;
function a : integer;
   begin
      a:=1
   end;
procedure b(function e : integer);
   begin
      counter:=e
   end;
function d(function e : integer) : integer;
   begin
      d:=counter+e
   end;

begin
   b(a);
   i:=d(a);
   if i=2 then
      writeln(' PASS...6.6.3.5-1')
   else
      writeln(' FAIL...6.6.3.5-1')
end.
