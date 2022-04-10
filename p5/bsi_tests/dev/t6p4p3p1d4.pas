{TEST 6.4.3.1-4, CLASS=DEVIANCE}

{: The syntax of Pascal forbids use of a structured-type
   identifier in a packed type definition.  }
{V3.1: Reals changed to integers. }

program t6p4p3p1d4(output);
type
   complex = record
               realpart : integers;
               imagpart : integers
             end;
   packcom = packed complex;
begin
   writeln(' DEVIATES...6.4.3.1-4')
end.
