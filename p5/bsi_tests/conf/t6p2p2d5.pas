{TEST 6.2.2-5, CLASS=CONFORMANCE}

{: This test checks the scope conformance of records. }
{  As for the other conformance tests in this section,
   it is possible to redefine a field-identifier of a record within
   the same scope as this record. }
{V3.0: Failure message altered to give reason.
   Was previously 6.2.2-6. }

program t6p2p2d5(output);
var
   j : integer;
   x : record
         j:integer
       end;
begin
   j:=1;
   x.j:=2;
   with x do
      j:=3;
   if (j=1) and (x.j=3) then writeln(' PASS...6.2.2-5')
   else  writeln(' FAIL...6.2.2-5')
end.
