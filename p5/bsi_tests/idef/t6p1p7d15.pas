{TEST 6.1.7-15, CLASS=IMPLEMENTATIONDEFINED, NUMBER= 1}

{: This program checks that the required string-characters
   are provided. }
{V3.1: New test. }

program t6p1p7d15(output);
const
   reqstr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+-*/=<>.,:;^() ''';
var
   st: packed array [1 .. 52] of char;
   i, j: 1 .. 52;
   fail: boolean;
begin
   fail := false;
   st := reqstr;
   for i := 1 to 52 do
   for j := 1 to 52 do
      begin
      if (i <> j) and (st[i] = st[j]) then
         fail := true;
      end;
   if fail then
      writeln(' FAIL...6.1.7-15')
   else
      writeln(' IMPLEMENTATION DEFINED...6.1.7-15')
end.
