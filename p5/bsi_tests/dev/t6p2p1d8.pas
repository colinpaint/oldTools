{$s}
{TEST 6.2.1-8, CLASS=DEVIANCE}

{: This test checks to see that an erroneous ordering of the
   declaration-parts of a program is detected. }
{  The Standard specifies a particular ordering:
   label/const/type/var/proc. }
{V3.0: New test to test ordering of declarations. }

program t6p2p1d8(output);
var
  i:integer;
type
  sr = 0..10;

procedure p(j:sr);
begin
   if j <> 3 then writeln(' THE VALUE OF J IS ', j)
end;

begin
   i := 3;
   p(i);
   writeln(' DEVIATES...6.2.1-8')
end.
