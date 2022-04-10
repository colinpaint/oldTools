{$s}
{TEST 6.4.3.5-4, CLASS=CONFORMANCE}

{: This test checks that file-types can appear in a record
   declaration. }
{V3.1: New test from BNI. }

program t6p4p3p5d4(output);
type
   recf=record
           inchar:file of char;
           case boolean of
              true:(outchar:file of char);
              false:(out:packed record
                                   outch:file of char;
                                   outint:file of integer;
                                end);
        end;
var
   r:recf;
   c:char;
begin
   rewrite(r.inchar);
   write(r.inchar,'A','B','C');
   reset(r.inchar);
   rewrite(r.out.outch);
   rewrite(r.out.outint);
   while not eof(r.inchar) do
      begin
         read(r.inchar,c);
         write(r.out.outch,c);
         r.out.outint^:=ord(c);
         put(r.out.outint);
      end;
   reset(r.out.outint);
   get(r.out.outint);
   c:=chr(r.out.outint^);
   if c='B' then writeln(' PASS...6.4.3.5-4')
            else writeln(' FAIL...6.4.3.5-4')
end.
