{TEST 6.6.4.1-2, CLASS=CONFORMANCE}

{: This test checks that a predefined function can be redefined. }
{V3.1: Comment corrected. }

program t6p6p4p1d2(output);
var
   x: integer;

function abs(y:integer): integer;
   begin
   abs := 0
   end;

begin
   x := 10;
   if abs(x)=0 then
      writeln(' PASS...6.6.4.1-2')
   else
      writeln(' FAIL...6.6.4.1-2')
end.
