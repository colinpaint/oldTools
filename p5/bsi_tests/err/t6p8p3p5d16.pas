{TEST 6.8.3.5-16, CLASS=EXTENSION, SUBCLASS=CONFORMANCE}

{: This test checks whether an otherwise clause in a case-statement
   is accepted. }
{  The convention is that adopted at the UCSD Pascal
   workshop in July 1978. The extension is accepted if the program
   prints PASS. }
{V3.0: Value check made more complete. Variable 'counter' not needed.
   Was previously 6.8.3.5-14. }

program t6p8p3p5d16(output);
var
   i,j,k:integer;
begin
   j:=0; k:=0;
   for i:=0 to 10 do
      case i of
      1,3,5,7,9:
         j:=j+1
      otherwise
         k:=k+1
      end;
   if (j=5) and (k=6) then
      writeln(' PASS...6.8.3.5-16')
   else
      writeln(' FAIL...6.8.3.5-16, OTHERWISE')
end.
