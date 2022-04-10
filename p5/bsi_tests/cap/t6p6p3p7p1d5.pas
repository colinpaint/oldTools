{TEST 6.6.3.7.1-5, CLASS=LEVEL1, SUBCLASS=DEVIANCE }

{: This test checks that a bound-identifier cannot be used
   in a constant-definition. }
{V3.1: New test. }

program t6p6p3p7p1d5(output);
var
   a: array [ 1 .. 2 ] of char;
procedure p( var x: array [ l..u: integer] of char);
   const
      m = l;
   begin
   x[m] := 'a';
   end;
begin
if false then
   p(a);
writeln( ' DEVIATES...6.6.3.7.1-5' )
end.
