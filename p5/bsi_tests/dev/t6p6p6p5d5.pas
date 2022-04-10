{TEST 6.6.6.5-5, CLASS=DEVIANCE}

{: This test deviates since the parameter to the
   eoln function must be a textfile. }
{V3.1: Comment changed and program parameter removed. }

program t6p6p6p5d5(output);
var
   fyle  : file of integer;
a,b,c : integer;
begin
   rewrite(fyle);
   write(fyle,1,2,3);
   reset(fyle);
   read(fyle,a,b,c);
   if eoln(fyle) then
      writeln(' DEVIATES...6.6.6.5-5, EOLN PARAMETER(1)')
   else
      writeln(' DEVIATES...6.6.6.5-5, EOLN PARAMETER(2)')
end.
