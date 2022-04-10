{TEST 6.9.1-3, CLASS=CONFORMANCE}

{: This test checks that integers and reals are read correctly
   from a file. }
{V3.1: Program parameter removed. }

program t6p9p1d3(output);
var
   f:text;
   i,j:integer;
   r,s:real;
begin

   { Internal (compile-time conversions) and run-time conversions
     should result in the same value, hence justifying the
     equality tests on real numbers. }

   rewrite(f);
   writeln(f,' 123 123.456 5 123E6 ');
   reset(f);
   read(f,i,r,j,s);
   if(i=123)and(r=123.456) and (j=5) and (s=123E6) then
      writeln(' PASS...6.9.1-3')
   else
      if (i=123) and (j=5) then
         writeln(' FAIL...6.9.1-3, READ REAL CONVERSIONS')
      else
         writeln(' FAIL...6.9.1-3, READ PROCEDURE')
end.
