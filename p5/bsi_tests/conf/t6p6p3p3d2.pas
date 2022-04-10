{$s}
{TEST 6.6.3.3-2, CLASS=CONFORMANCE}

{: This test checks that any operation involving the formal
   parameter is performed immediately on the actual parameter. }
{  Depending on how variable parameter passing is implemented,
   this test may cause some processors to fail. }
{V3.0: Write for FAIL elaborated. }

program t6p6p3p3d2(output);
var
   direct : integer;
   pass  : boolean;
procedure indirection(var indirect : integer; var result : boolean);
   begin
      indirect:=2;
      if indirect<>direct then
         result:=false
      else
         result:=true
   end;
begin
   direct:=1;
   pass:=false;
   indirection(direct,pass);
   if pass then
      writeln(' PASS...6.6.3.3-2')
   else
      writeln(' FAIL...6.6.3.3-2')
end.
