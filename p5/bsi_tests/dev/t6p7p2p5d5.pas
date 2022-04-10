{TEST 6.7.2.5-5, CLASS=DEVIANCE}

{: Relational operators should not be permitted to concatenate. }
{V3.0: Write revised. Was previously 6.7.2.5-4. }

program t6p7p2p5d5(output);
var
   x,y,z:integer;
  b:boolean;
begin
   x:=1;
   y:=2;
   z:=3;
   b:=(x<y<z);
   writeln(' DEVIATES...6.7.2.5-5')
end.
