{TEST 6.1.2-9, CLASS=DEVIANCE}

{: This test deviates since the character & is not a token
   of Pascal. }
{  This test is not  relevant to processors that do
   not admit the & character in their character set. }
{V3.1: Test moved. }

program t6p1p2d9(output);
var
   i:integer;
begin
   i:=7;
   if (i>4) & (i<9) then i:=0;
   writeln(' DEVIATES...6.1.2-9')
end.
