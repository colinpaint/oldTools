{TEST 6.4.5-10, CLASS=DEVIANCE}

{: This test checks that structurally identical types are not
   regarded as identical. }
{  Again, this test is similar to 6.4.5-9, except that deviance
   for pointers is tested.
   Although the two pointers in this example point to the same
   type, they are not identical. }
{V3.1: Comment changed. }

program t6p4p5d10(output);
type
   rekord = record
               a : integer
            end;
   ptrone = ^rekord;
   ptrtwo = ^rekord;
var
   ptrtorectoo : ptrtwo;

procedure test(var ptr : ptrone);
begin
   writeln(' DEVIATES...6.4.5-10')
end;

begin
   new(ptrtorectoo);
   ptrtorectoo^.a:=32;
   test(ptrtorectoo)
end.
