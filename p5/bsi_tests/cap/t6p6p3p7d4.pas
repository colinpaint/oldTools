{TEST 6.6.3.7-4, CLASS=LEVEL1, SUBCLASS=DEVIANCE }

{: This test checks that writeln cannot be applied with
   a conformant array as a parameter even if it is a packed
   array of char. }
{V3.1: New test. }

program t6p6p3p7d4(output);
procedure p( x: packed array [ l..u : integer] of char);
   begin
   writeln(x)
   end;
begin
if false then
   p('WRITELN ALLOWED');
writeln( ' DEVIATES...6.6.3.7-4' )
end.
