{TEST 6.6.3.7.2-4, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that a value array actual parameter does not
   indirectly have a file component. }
{V3.1: New test. }

program t6p6p3p7p2d4(output);

type
   ind=record
       i: integer;
       f: text;
       end;
var
   a: array [1..2] of ind;
procedure rst (x: array [l..u: integer] of ind);
   begin
   reset (x[l].f)
   end;
begin
if false then
   rst(a);
writeln(' DEVIATES...6.6.3.7.2-4')
end.
