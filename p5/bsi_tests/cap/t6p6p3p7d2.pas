{TEST 6.6.3.7-2, CLASS=LEVEL1, SUBCLASS=CONFORMANCE }

{: This program checks that conformant arrays can appear
   as actual parameters to the procedure unpack. }
{V3.1: New test. }

program t6p6p3p7d2(output);
var
   fail: boolean;
   a: array [-1 .. 1] of char;
   z: packed array [1 .. 3] of char;
procedure p( var ca: array[la..ua: integer] of char;
             var cz: packed array[lz..uz: integer] of char);
   var
      i: integer;
   begin
   z := '012';
   unpack(cz, a, -1);
   for i := la to ua do
      if ca[i] <> chr(i - la + ord('0')) then
         fail := true;
   a[0] := '9';
   unpack(z, ca, la);
   for i := la to ua do
      if ca[i] <> chr(i - la + ord('0')) then
         fail := true;
   end;
begin
fail := false;
p(a, z);
if fail then
   writeln(' FAIL...6.6.3.7-2')
else
   writeln(' PASS...6.6.3.7-2')
end.
