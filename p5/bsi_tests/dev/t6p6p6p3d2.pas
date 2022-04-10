{TEST 6.6.6.3-2, CLASS=DEVIANCE}

{: This test checks that neither trunc nor round are permitted
   to have integer parameters. }
{  The Standard requires these to be real. }
{V3.0: Made i less than 1024.
   Write revised. Was previously 6.6.6.3-4. }

program t6p6p6p3d2(output);
var
   i:integer;
   x:real;
begin
   i:=1001;
   x:=trunc(i)+round(i+1);
   writeln(' DEVIATES...6.6.6.3-2')
end.
