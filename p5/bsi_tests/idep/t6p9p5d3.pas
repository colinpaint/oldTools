{TEST 6.9.5-3, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 8}

{: This program determines the sequence of characters used
   to represent the effect of page on a textfile. }
{V3.1: New test. }

program t6p9p5d3(output);
var
   f: text;
   c: char;
   endline: boolean;
begin
   rewrite(f);
   write(f, '.');
   page(f);
   writeln(f, '.');
   reset(f);
   repeat
      read(f, c);
   until (c = '.');
   writeln(' OUTPUT FROM TEST...6.9.5-3');
   writeln(' SEQUENCE CORRESPONDING TO PAGE');
   repeat
      endline := eoln(f);
      read(f, c);
      if c <> '.' then
         begin
         if endline then
            writeln( 'EOLN')
         else
            writeln(' CHAR, ORD(C)= ', ord(c) )
         end;
   until (c = '.');
   writeln(' IMPLEMENTATION DEPENDENT...6.9.5-3')
end.
