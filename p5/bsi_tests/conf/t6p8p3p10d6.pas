{TEST 6.8.3.10-6, CLASS=CONFORMANCE}

{: This test checks that the order of evaluation of the
   record-variable-list in a with-statement is correctly
   implemented. }
{V3.0: Writes revised. }

program t6p8p3p10d6(output);
type
   pp = ^ptr;
   ptr = record
           i:integer;
           link:pp
         end;
var
   p,q,r : pp;
begin
   new(p);
   p^.i := 0;
   new(q);
   q^.i := 0;
   p^.link := q;
   new(r);
   r^.i := 0;
   r^.link := nil;
   q^.link := r;
   with p^, link^, link^ do
      i:=5;
   if ((r^.i=5) and (q^.i=0) and (p^.i=0)) then
      writeln(' PASS...6.8.3.10-6')
   else
      writeln(' FAIL...6.8.3.10-6')
end.
