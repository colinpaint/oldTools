{TEST 6.9.3.3-1, CLASS=CONFORMANCE}

{: This test checks that the default value for the field width
   of a char-type is one. }
{V3.1: Program parameter removed. }

program t6p9p3p3d1(output);
const
   whatitshouldbe = 'A  BC';
var
   f:text;
   a,b,c:char;
   whatwasread:packed array[1..5] of char;
   i:integer;
begin
   rewrite(f);
   a:='A';
   b:='B';
   c:='C';
   write(f,a,b:3,c);
   writeln(f);
   reset(f);
   for i := 1 to 5 do
      read(f,whatwasread[i]);
   if (whatwasread=whatitshouldbe) then
      writeln(' PASS...6.9.3.3-1')
   else
      write(' FAIL...6.9.3.3-1')
end.
