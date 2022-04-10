{TEST 6.5.3.2-1, CLASS=CONFORMANCE}

{: This test checks that the two ways of indexing a
   multi-dimensional array are equivalent. }
{V3.0: Write for PASS shortened. Was previously 6.5.3.2-2. }

program t6p5p3p2d1(output);
var
   a:array[1..4,1..4] of integer;
   b:array[1..4] of
      array[1..4] of integer;
   p:packed array [1..4,1..4]of char;
   q:packed array[1..4] of
      packed array [1..4] of char;
   i,j,counter:integer;
begin
   counter:=0;
   for i:= 1 to 4 do
      for j:=1 to 4 do
      begin
         a[i,j] := j;
         b[i,j] := j;
         case j of
         1:
           begin
               p[i,j]:='F';
               q[i,j]:='F'
           end;
         2:
           begin
               p[i,j]:='A';
               q[i,j]:='A'
           end;
         3:
           begin
               p[i,j]:='I';
               q[i,j]:='I'
           end;
         4:
           begin
               p[i,j]:='L';
               q[i,j]:='L'
           end
         end
      end;
   for i:=1 to 4 do
      for j:=1 to 4 do
      begin
         if a[i][j] <> a[i,j] then
            counter:=counter+1;
         if b[i][j] <> b[i,j] then
            counter:=counter+1;
         if p[i][j] <> p[i,j] then
            counter:=counter+1;
         if q[i][j] <> q[i,j] then
            counter:=counter+1
      end;
   if counter=0 then
      writeln(' PASS...6.5.3.2-1')
   else
      writeln(' FAIL...6.5.3.2-1')
end.
