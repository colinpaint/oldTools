{$i}
{TEST 6.5.5-2, CLASS=ERRORHANDLING, NUMBER= 6}

{: This program causes an error to occur by changing the
   current file position of a file, while the buffer-variable
   is an actual variable parameter to a procedure. }
{  The error should be detected by the processor. }
{V3.1: Comment changed. }

program t6p5p5d2(output);
var
   fyle : text;
procedure naughty(var f : char);
   begin
      if f='G' then
         put(fyle)
   end;
begin
   rewrite(fyle);
   fyle^:='G';
   naughty(fyle^);
   writeln(' ERROR...6.5.5-2');
   writeln(' ERROR NOT DETECTED')
end.
