{$s}
{TEST 6.9.3.1-2, CLASS=ERRORHANDLING, NUMBER=58}

{: This test attempts to output characters whose field width
   parameters are non-positive. }
{V3.1: Was 6.9.3.2-3, rewrite added, character output. }

program t6p9p3p1d2(output);
var
   f:text;
   i:integer;
begin  rewrite (f);
   for i:=10 downto -1 do
      write(f,' ','.':i, 'REP=',i);
   writeln(' ERROR...6.9.3.1-2');
   writeln(' ERROR NOT DETECTED')
end.
