{TEST 6.4.1-3, CLASS=DEVIANCE}

{: This program tests that attempts to use types in their own
   definitions are detected. }
{  But it inserts a nasty scope twist by making another type
   with the same identifier available in an outer scope.
   It should be excluded from this scope, according to the
   Standard. }
{V3.0: Colon in write changed to comma. }

program t6p4p1d3(output);
type
   x  = integer;

procedure p;
type
   x  = record
            y : x
        end;
begin
   writeln(' DEVIATES...6.4.1-3')
end;

begin
   p
end.
