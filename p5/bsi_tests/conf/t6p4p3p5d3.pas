{TEST 6.4.3.5-3, CLASS=CONFORMANCE}

{: This program tests if an end-of-line marker is inserted at the
   end of the line, if not explicitly done in the program. }
{  The structure of a text file requires a closing linemarker.
   Conforming processors will insert the linemarker
   automatically to make the textfile conform. }
{V3.1: Program parameter removed and comment changed. }

program t6p4p3p5d3(output);
var
   file1 : text;
   state : (correct,wrong);
begin
   state:=correct;
   rewrite(file1);
   write(file1,'A');
   reset(file1);
   if file1^='A' then get(file1) else state:=wrong;
   if eoln(file1) and (file1^=' ') then get(file1)
      else state:=wrong;
   if not eof(file1) then state:=wrong;
   if state=correct then
      writeln(' PASS...6.4.3.5-3')
   else
      writeln(' FAIL...6.4.3.5-3')
end.
