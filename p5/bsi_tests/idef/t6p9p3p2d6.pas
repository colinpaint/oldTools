{TEST 6.9.3.2-6, CLASS=IMPLEMENTATIONDEFINED, NUMBER= 8}

{: This program determines the implementation defined default
   field width for writing integers. }
{  The test fails if the width is not constant. }
{V3.1: Rewritten to test just integer width. }

program t6p9p3p2d6(output);
var
   f:text;
   c:char;
   i,j:integer;

   function readfield:integer;
   var
      i:integer;
   begin
   i:=0;
   repeat
      read(f,c);
      i:=i+1
   until (c='Z');
   readfield:=i-1
end;

begin
   rewrite(f);
   write(f,1,'Z',maxint,'Z');
   writeln(f);
   reset(f);
   writeln(' OUTPUT FROM TEST...6.9.3.2-6');
   writeln(' DEFAULT OUTPUT WIDTH FOR INTEGERS');
   i:=readfield;
   j:=readfield;
   if (i=j) then
      writeln(' TOTALWIDTH DEFAULT VALUE =',i:5,' CHARACTERS')
   else
      writeln(' FAIL...6.9.3.2-6');
   writeln(' IMPLEMENTATION DEFINED...6.9.3.2-6')
end.
