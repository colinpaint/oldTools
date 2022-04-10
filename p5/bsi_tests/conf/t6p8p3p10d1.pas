{TEST 6.8.3.10-1, CLASS=CONFORMANCE}

{: This program checks the implementation of the with-statement. }
{V3.0: Writes revised. }

program t6p8p3p10d1(output);
var
   r1:record
        a,b:integer
      end;
   r2:record
        c,d:integer
      end;
   r3:record
        e,f:integer
      end;
   counter:integer;
begin
   counter:=0;
   with r1 do
      a:=5;
   with r1,r2,r3 do
   begin
      e:=a;
      c:=a
   end;
   with r2 do
      if c=5 then
         counter:=counter+1;
   if r2.c=5 then
      counter:=counter+1;
   if counter=2 then
      writeln(' PASS...6.8.3.10-1')
   else
      writeln(' FAIL...6.8.3.10-1')
end.
