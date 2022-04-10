{TEST 6.9.3.4.1-2, CLASS=IMPLEMENTATIONDEFINED, NUMBER=12}

{: This program determines the implementation defined
   exponent character. }
{V3.1: New test. }

program t6p9p3p4p1d2(output);
var
   f:text;
   c:char;
   i:integer;
begin
   rewrite(f);
   write(f,1.0:10,'ABC');
   writeln(f);
   reset(f);
   repeat
      read(f,c)
   until (c='e') or (c='E');
   writeln(' OUTPUT FROM TEST...6.9.3.4.1-2');
   writeln(' IMPLEMENTATION DEFINED EXPONENT CHARACTER');
   writeln(' IS ', c);
   if 'e' = 'E' then
      writeln(' ONLY ONE CASE IMPLEMENTED');
   if c <> 'E' then
      writeln(' LOWER CASE')
   else
      writeln(' UPPER CASE');
   writeln(' IMPLEMENTATION DEFINED...6.9.3.4.1-2')
end.
