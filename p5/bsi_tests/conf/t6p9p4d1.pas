{TEST 6.9.4-1, CLASS=CONFORMANCE}

{: This program checks the implementation of procedure writeln. }
{V3.1: Program parameter removed. }

program t6p9p4d1(output);
var
   f:text;
   a,b:packed array[1..10] of char;
   i:integer;
begin
   rewrite(f);
   writeln(f,1:5,'ABCDE');
   write(f,1:5,'ABCDE');
   writeln(f);
   reset(f);
   for i:=1 to 10 do
      read(f,a[i]);
   readln(f);
   for i:=1 to 10 do
      read(f,b[i]);
   if (a=b) then
      writeln(' PASS...6.9.4-1')
   else
      writeln(' FAIL...6.9.4-1')
end.
