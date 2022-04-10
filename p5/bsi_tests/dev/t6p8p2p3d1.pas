{TEST 6.8.2.3-1, CLASS=DEVIANCE}

{: This test deviates since a function cannot be called as a
   statement. }
{  Algol 60 permits this. }
{V3.0: New test. }

program t6p8p2p3d1(output);
function f: integer;
   begin
   f := 10
   end;
begin
   f;
   writeln(' DEVIATES...6.8.2.3-1')
end.
