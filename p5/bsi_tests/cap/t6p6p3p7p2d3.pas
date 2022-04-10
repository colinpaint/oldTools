{TEST 6.6.3.7.2-3, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: This test checks that a value array actual parameter does not
   have a file type as a component type. }
{V3.1: New test. }

program t6p6p3p7p2d3(output);

var
   a: array [1..2] of text;
procedure rst(x: array [l..u: integer] of text);
   begin
   reset (x[l])
   end;
begin
if false then
   rst(a);
writeln(' DEVIATES...6.6.3.7.2-3')
end.
