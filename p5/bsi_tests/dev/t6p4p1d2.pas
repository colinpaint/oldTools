{TEST 6.4.1-2, CLASS=DEVIANCE}

{: This test deviates since the defining-point of a type-identifier
   occurs at the end of its type-definition. }
{  The following two examples contain the use of a type-identifier
   in its own definition. }
{V3.0: Comment and write changed. }

program t6p4p1d2(output);
type
   x  = record
            xx : x
        end;
   y  = array[0..1] of y;
begin
   writeln(' DEVIATES...6.4.1-2')
end.
