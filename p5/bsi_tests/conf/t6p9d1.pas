{TEST 6.9-1, CLASS=CONFORMANCE}

{: This program attempts to perform recursive I/O using a
   different file for the second I/O action. }
{V3.1: Program parameters removed. }

program t6p9d1(output);
var
   f1,f2:text;
   b,c  :integer;

function a(i:integer):integer;
begin
   writeln(f2,i);
   a:=i
end;

begin
   rewrite(f1);
   rewrite(f2);
   writeln(f1,a(1));
   reset(f1);
   reset(f2);
   readln(f1,b);
   readln(f2,c);
   if (b=1) and (c=1) then
      writeln(' PASS...6.9-1')
   else
      writeln(' FAIL...6.9-1')
end.
