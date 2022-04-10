{TEST 6.9.3.4.1-1, CLASS=IMPLEMENTATIONDEFINED, NUMBER=11}

{: This program determines the implementation defined value which
   represents the number of digit characters written in an exponent. }
{V3.1: Renumbered from 6.9.3.5.1-2. }

program t6p9p3p4p1d1(output);
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
   until (c='+');
   i:=-1;
   repeat
      read(f,c);
      i:=i+1
   until (c='A');
   writeln(' OUTPUT FROM TEST...6.9.3.4.1-1');
   writeln(' NUMBER OF DIGITS IN AN EXPONENT');
   writeln(' EXPDIGITS IS',i:5);
   writeln(' IMPLEMENTATION DEFINED...6.9.3.4.1-1')
end.
