{TEST 6.6.3.4-1, CLASS=CONFORMANCE}

{: This program tests that procedures may be passed to other
   procedures and functions as parameters. }
{V3.0: Test modified slightly to add write for FAIL. }

program t6p6p3p4d1(output);
var
   i,counter : integer;
procedure a;
   begin
      counter:=1
   end;
procedure b(procedure e);
   begin
      e
   end;
procedure c;
   begin
      counter:=counter+1
   end;
function d(procedure e) : integer;
   begin
      e;
      d:=counter
   end;

begin
   b(a);
   i:=d(c);
   if i=2 then
      writeln(' PASS...6.6.3.4-1')
   else
      writeln(' FAIL...6.6.3.4-1')
end.
