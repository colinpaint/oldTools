{TEST 6.1.2-10, CLASS=DEVIANCE}

{: This test deviates since the character | is not a token
   of Pascal. }
{  This test is not  relevant to processors that do not admit
   the | character in their character set. }
{V3.1: Test moved. }

program t6p1p2d10(output);
var
   i:integer;
begin
   i:=77;
   if (i<35) | (i>56) then i:=0;
   writeln(' DEVIATES...6.1.2-10')
end.
