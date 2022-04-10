{TEST 6.9.3.7-1, CLASS=CONFORMANCE}

{: This test checks that strings are correctly written onto
   a textfile. }
{V3.1: Program parameter removed. }

program t6p9p3p7d1(output);
var
   f:text;
   i,j,k,counter:integer;
   c:char;
begin
   rewrite(f);
   counter:=0;
   for i := 1 to 10 do
      begin
      write(f,'AAAAA':i,'B':1);
      writeln(f)
      end;
   write(f,'BBBBB','C':1);
   writeln(f);
   reset(f);
   for i:=1 to 10 do
   begin
      for j:=6 to i do begin
         read(f,c);
         if (c=' ') then
            counter:=counter+1
      end;
      if (i>5) then k:=5 else k:=i;
      for j:=1 to k do
      begin
         read(f,c);
         if(c='A') then
            counter:=counter+1
      end;
      read(f,c);
      if (c='B') then
         counter:=counter+1;
      readln(f)
   end;
   for i:=1 to 5 do
   begin
      read(f,c);
      if (c='B') then
         counter:=counter+1
   end;
   read(f,c);
   if (c='C') then
      counter:=counter+1;
   if(counter=71) then
      writeln(' PASS...6.9.3.7-1')
   else
      writeln(' FAIL...6.9.3.7-1')
end.
