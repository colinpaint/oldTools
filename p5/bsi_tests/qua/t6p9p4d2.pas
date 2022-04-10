{TEST 6.9.4-2, CLASS=QUALITY}

{: This program checks that a list of 30 write-parameters can
   appear in a writeln-parameter-list. }
{V3.1: Program parameter removed. }

program t6p9p4d2(output);
const
   str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123';
var
   fail: boolean;
   c: char;
   v: packed array [ 1 .. 30] of char;
   i: 1 .. 30;
   tempfile: text;
begin
   fail := false;
   v := str;
   rewrite(tempfile);
   writeln(tempfile, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
                   'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
                   'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0',
                   '1', '2', '3');
   reset(tempfile);
   for i := 1 to 30 do
      begin
      read(tempfile, c);
      if c <> v[i] then
         fail := true
      end;
   if not eoln(tempfile) then
      fail := true;
   if fail then
      writeln(' FAIL...6.9.4-2')
   else
      writeln(' QUALITY...6.9.4-2')
end.
