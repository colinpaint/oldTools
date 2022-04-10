{TEST 6.6.4.1-1, CLASS=CONFORMANCE}

{: This program tests that predefined standard procedures may
   be redefined with no conflict. }
{V3.0: Write for FAIL elaborated. }

program t6p6p4p1d1(output);
var
   i : integer;
procedure write(var a : integer);
   begin
      a:=a+2
   end;
procedure get(var a : integer);
   begin
      a:=a*2
   end;

begin
   i:=0;
   write(i);
   get(i);
   if i=4 then
      writeln(' PASS...6.6.4.1-1')
   else
      writeln(' FAIL...6.6.4.1-1')
end.
