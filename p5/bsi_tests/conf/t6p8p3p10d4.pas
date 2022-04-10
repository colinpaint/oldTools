{TEST 6.8.3.10-4, CLASS=CONFORMANCE}

{: This test checks that the selection of a variable in the
   record-variable-list is performed before the component
   statement is executed. }
{V3.0: Writes revised. }

program t6p8p3p10d4(output);
var
   a:array[1..2] of record
                      i,j:integer
                    end;
   k:integer;
begin
   a[2].i:=5;
   k:=1;
   with a[k] do
   begin
      j:=1;
      k:=2;
      i:=2
   end;
   if (a[2].i=5) and (a[1].i=2) then
      writeln(' PASS...6.8.3.10-4')
   else
      writeln(' FAIL...6.8.3.10-4')
end.
