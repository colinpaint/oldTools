{TEST 6.8.3.10-2, CLASS=CONFORMANCE}

{: This test checks that a field-identifier is correctly
   identified when a with-statement is invoked. }
{V3.0: Writes revised. }

program t6p8p3p10d2(output);
var
   r:record
       i,j:integer
     end;
   i:integer;
begin
   i:=10;
   with r do
      i:=5;
   if (i=10) and (r.i=5) then
      writeln(' PASS...6.8.3.10-2')
   else
      writeln(' FAIL...6.8.3.10-2')
end.
