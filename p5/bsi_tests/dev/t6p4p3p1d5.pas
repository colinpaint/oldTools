{TEST 6.4.3.1-5, CLASS=DEVIANCE}

{: Recursive type-definitions are not allowed, because the
   defining-point of a type-identifier occurs at the end of
   the type-definition. }
{V3.0: New test derived from a processor bug. }

program t6p4p3p1d5(output);
type thing = record
             a: integer;
             b: thing
             end;
var
   x: thing;
begin
   x.a := 1;
   x.b.a := 2;
   writeln(' DEVIATES...6.4.3.1-5')
end.
