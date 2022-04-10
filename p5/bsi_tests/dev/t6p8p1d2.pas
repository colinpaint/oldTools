{TEST 6.8.1-2, CLASS=DEVIANCE}

{: This test checks whether jumps between branches of a
   case-statement are allowed. }
{V3.1: Test renumbered was 6.8.2.4-3. }

program t6p8p1d2(output);
label
   4;
var
   i:1..3;
begin
   for i:=1 to 2 do
      case i of
      1:  ;
      2: goto 4;
      3:4:
         writeln(' DEVIATES...6.8.1-2')
      end
end.
