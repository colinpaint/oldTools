{TEST 6.9.2-1, CLASS=CONFORMANCE}

{: This test checks that readln is correctly implemented. }
{V3.1: Program parameter removed. }

program t6p9p2d1(output);
var
   f:text;
   a,b,c:char;
   counter:integer;
begin
   counter:=0;
   rewrite(f);
   writeln(f,'ABC');
   writeln(f,'DE');
   reset(f);
   readln(f,a,b,c);
   read(f,a);
   if (a='D') then counter:=counter+1;
   reset(f);
   read(f,a,b,c);
   readln(f);
   read(f,a);
   if(a='D') then counter:=counter+1;
   reset(f);
   read(f,a);
   while not eoln(f) do get(f);
   get(f);
   if (f^='D') then counter:=counter+1;
   if (counter=3) then
      writeln(' PASS...6.9.2-1')
   else
      writeln(' FAIL...6.9.2-1')
end.
