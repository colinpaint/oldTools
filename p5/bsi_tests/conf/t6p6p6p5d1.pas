{TEST 6.6.6.5-1, CLASS=CONFORMANCE}

{: This program tests the functions eof and eoln. }
{  Tests  6.4.3.5-2, 6.4.3.5-3, 6.6.5.2-1 and 6.6.5.2-3 are also
   conformance tests incorporating use of these functions. }
{V3.1: Program parameter and a readln removed also writes changed. }

program t6p6p6p5d1(output);
var
   fyle      : text;
   counter,n : integer;
begin
   counter:=0;
   rewrite(fyle);
   if eof(fyle) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.5-1, EOF FUNCTION(1)');
   writeln(fyle,'1 2 3');
   reset(fyle);
   if eof(fyle) then
      writeln(' FAIL...6.6.6.5-1, EOF FUNCTION(2)')
   else
      counter:=counter+1;
   if eoln(fyle) then
      writeln(' FAIL...6.6.6.5-1, EOLN FUNCTION(1)')
   else
      counter:=counter+1;
   read(fyle,n); read(fyle,n); read(fyle,n);
   if not eoln(fyle) then
      writeln(' FAIL...6.6.6.5-1, EOLN FUNCTION(2)')
   else
      if counter=3 then
         writeln(' PASS...6.6.6.5-1')
end.
