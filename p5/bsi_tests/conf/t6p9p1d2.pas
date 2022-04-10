{TEST 6.9.1-2, CLASS=CONFORMANCE}

{: This test checks that a read of a character variable is
   equivalent to correctly positioning the buffer variable. }
{V3.1: Program parameter removed. }

program t6p9p1d2(output);
var
   f:text;
   a,b,a1,b1:char;
begin
   rewrite(f);
   writeln(f,'ABC');
   reset(f);
   read(f,a);
   read(f,b);
   reset(f);
   a1:=f^; get(f);
   b1:=f^; get(f);
   if(a=a1) and (b=b1) then
      writeln(' PASS...6.9.1-2')
   else
      writeln(' FAIL...6.9.1-2')
end.
