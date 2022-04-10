{TEST 6.6.5.3-2, CLASS=CONFORMANCE}

{: This program tests that new and dispose operate as required. }
{  However, after a call of dispose pointer should be undefined
   and this is not tested. }
{V3.0: Comment reworded - undefinition was bad English. }

program t6p6p5p3d2(output);
var
   ptr : ^integer;
   i   : integer;
begin
   for i:=1 to 10 do
   begin
      new(ptr);
      ptr^:=i;
      dispose(ptr)
   end;
   writeln(' PASS...6.6.5.3-2')
end.
