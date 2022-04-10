{TEST 6.9.3.2-2, CLASS=DEVIANCE}

{: This program checks whether an unpacked array of characters
   can be output to a textfile. }
{V3.1: Program parameter removed, rewrite added. }

program t6p9p3p2d2(output);
var
   f:text;
   s:array[1..3] of char;
begin
  rewrite(f);
   s[1]:='R'; s[2]:='A'; s[3]:='N';
   write(f,' RAN=',s);
   writeln(' DEVIATES...6.9.3.2-2')
end.
