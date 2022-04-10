{TEST 6.8.3.5-1, CLASS=CONFORMANCE}

{: This test checks that a minimal case-statement is accepted. }
{V3.0: Write shortened. }

program t6p8p3p5d1(output);
var
   i:integer;
begin
   i:=1;
   case i of
   1:
   end;
   writeln(' PASS...6.8.3.5-1')
end.
