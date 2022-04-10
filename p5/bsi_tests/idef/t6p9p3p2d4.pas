{TEST 6.9.3.2-4, CLASS=IMPLEMENTATIONDEFINED, NUMBER= 9}

{: This program determines the implementation defined default
   field width for writing reals. }
{V3.1: Test separated from that for integers and booleans. }

program t6p9p3p2d4(output);
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
   write(f,0.001,'Z',100.0,'Z');
   writeln(f);
   reset(f);
   writeln(' OUTPUT FROM TEST...6.9.3.2-4');
   writeln(' DEFAULT OUTPUT WIDTH FOR REALS');
   i:=readfield;
   j:=readfield;
   if (i=j) then
      writeln(' TOTALWIDTH DEFAULT VALUE =',i:5,' CHARACTERS')
   else
      writeln(' FAIL...6.9.3.2-4');
   writeln(' IMPLEMENTATION DEFINED...6.9.3.2-4')
end.
