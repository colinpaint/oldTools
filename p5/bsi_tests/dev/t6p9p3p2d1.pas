{TEST 6.9.3.2-1, CLASS=DEVIANCE}

{: This program attempts to output an integer number using a real
   format. }
{V3.1: Program parameter removed, rewrite added. }

program t6p9p3p2d1(output);
var
   f:text;
   i:integer;
begin
  rewrite(f);
   i:=123;
   write(f,i:6:1);
   writeln(' DEVIATES...6.9.3.2-1')
end.
