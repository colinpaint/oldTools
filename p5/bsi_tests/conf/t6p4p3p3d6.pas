{TEST 6.4.3.3-6, CLASS=CONFORMANCE}

{: This test checks that nested variants are allowed
   with the appropriate syntax. }
{V3.0: Writing and comment revised. Was previously 6.4.3.3-13. }

program t6p4p3p3d6(output);
type
   a=record
       case b:boolean of
       true: (c:char);
       false: (case d:boolean of
               true: (e:char);
               false: (f:integer))
      end;
var
   g:a;
begin
   g.b:=false;
   g.d:=false;
   g.f:=1;
   writeln(' PASS...6.4.3.3-6')
end.
