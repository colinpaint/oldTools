{TEST 6.8.3.10-5, CLASS=CONFORMANCE}

{: This test checks that the selection of a variable in the
   record-variable-list is performed before the component
   statement is executed. }
{V3.0: Writes revised. }

program t6p8p3p10d5(output);
type
   pointer = ^recordtype;
   recordtype = record
                  data:integer;
                  link:pointer
                end;
var
   counter:integer;
   p,q:pointer;
begin
   counter:=0;
   new(p);
   p^.data:=0;
   new(q);
   q^.data:=1;
   q^.link:=nil;
   p^.link:=q;
   q:=p;
   with q^ do
   begin
      q:=link;
      if (data=0) and (q^.data=1) then
         counter:=counter+1
   end;
   with p^ do
   begin
      p:=link;
      { The first record now has no reference, so it could
        be deleted prematurely. }
      if (data=0) and (p^.data=1) then
         counter:=counter+1
   end;
   if counter=2 then
         writeln(' PASS...6.8.3.10-5')
      else
         writeln(' FAIL...6.8.3.10-5')
end.
