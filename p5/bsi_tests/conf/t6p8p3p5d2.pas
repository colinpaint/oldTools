{TEST 6.8.3.5-2, CLASS=CONFORMANCE}

{: This test checks that a processor will handle a case-statement
   where the case-constants are not close together. }
{  Most processors issue a jump table for a case, regardless
   of its structure. It is easy to optimise case-statements
   to generate conditional statements if this is more compact.
   Processors which employ simple strategies for implementation of
   case-statements may fail this test. }
{V3.0: Comment changed. }

program t6p8p3p5d2(output);
var
   i,j:integer;
begin
   i:=-1000;
   for j:=1 to 2 do
      case i of
      -1000: i:=-i;
      1000: writeln(' PASS...6.8.3.5-2')
      end
end.
