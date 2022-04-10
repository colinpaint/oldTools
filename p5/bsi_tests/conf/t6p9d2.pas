{TEST 6.9-2, CLASS=CONFORMANCE}

{: This program attempts to perform recursive I/O using the
   same file for the second I/O action. }
{V3.1: Program parameter removed and reclassified from QUALITY. }

program t6p9d2(output);
var
   f:text;
   b,c:integer;

function a(i:integer):integer;
begin
   writeln(f,i);
   a:=i
end;

begin
   rewrite(f);
   writeln(f,a(1));
   reset(f);
   readln(f,b);
   readln(f,c);
   if (b=1) and (c=1) then
      writeln(' PASS...6.9-2')
   else
      writeln(' FAIL...6.9-2')
end.
