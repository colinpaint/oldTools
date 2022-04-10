{TEST 6.6.1-4, CLASS=DEVIANCE}

{: This program checks that a procedure call is not incorrectly
   bound to the wrong defining occurrence. }
{  The test uses a standard function rather than nested procedures.
   Simple processors are likely to fail it. Test does not work
   if ord('A')=-maxint. Since the applied occurrence is before
   the defining occurrence, the program deviates. }
{V3.0: New test. }

program t6p6p1d4(output);
var
     i:integer;
procedure p;
     begin
     i := ord( 'A' )
     end;
function ord(c:char): integer;
     begin
     ord := - maxint
     end;
begin
p;
if i <> -maxint then
     writeln(' OUTER FUNCTION')
else
     writeln(' INNER FUNCTION');
writeln(' DEVIATES...6.6.1-4')
end.
