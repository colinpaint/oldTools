{TEST 6.9.3-3, CLASS=QUALITY}

{: This program checks that a list of 30 write-parameters can
   appear in a write-parameter-list. }
{V3.1: program parameter removed. }

program t6p9p3d3(output);
const
   str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ01234';
var
   fail: boolean;
   c: char;
   v: packed array [ 1 .. 31 ] of char;
   i: 1 .. 31;
   tempfile: text;
begin
   fail := false;
   v := str;
   rewrite(tempfile);
   write(tempfile, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
                   'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
                   'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0',
                   '1', '2', '3');
   writeln(tempfile, '4');
   reset(tempfile);
   for i := 1 to 31 do
      begin
      read(tempfile, c);
      if c <> v[i] then
         fail := true
      end;
   if fail then
      writeln(' FAIL...6.9.3-3')
   else
      writeln(' QUALITY...6.9.3-3')
end.
