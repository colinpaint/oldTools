{TEST 6.6.3.7-3, CLASS=LEVEL1, SUBCLASS=DEVIANCE }

{: This test checks that the equals operator cannot be used
   with a conformant array as an operand even if it is a packed
   array of char. }
{V3.1: New test. }

program t6p6p3p7d3(output);
procedure p( x, y: packed array [ l..u : integer] of char);
   begin
   if x = y then
      writeln( 'EQUALS ALLOWED')
   end;
begin
writeln( ' DEVIATES...6.6.3.7-3' )
end.
