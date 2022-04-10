{TEST 6.4.2.2-1, CLASS=CONFORMANCE}

{: This program tests that the standard simple types have all
   been implemented. }
{  They are denoted by predefined type identifiers. }
{V3.0: Value check added. Comment and write in case
   of failure revised. }

program t6p4p2p2d1(output);
var
   a : integer;
   b : real;
   c : boolean;
   d : char;
begin
   a:=6*2+3;
   b:=3.14159*2;
   c:=(a=15);
   d:='Z';
   if (a = 15) and (b < 6.284) and (b > 6.282)
      and (c =true) and (d = 'Z') then
      writeln(' PASS...6.4.2.2-1')
   else
      writeln(' FAIL...6.4.2.2-1')
end.
