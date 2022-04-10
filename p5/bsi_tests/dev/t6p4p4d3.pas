{TEST 6.4.4-3, CLASS=DEVIANCE}

{: Pointers to items in the stack are not allowed.
   The ^ symbol is not permitted to act as an operator
   giving the reference to a variable. }
{V3.0: Comment revised. }

program t6p4p4d3(output);
var
   p: ^integer;
   x:integer;
begin
   x:=10;
   p:=^x;
   writeln(' DEVIATES...6.4.4-3')
end.
