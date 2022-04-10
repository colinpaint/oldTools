{TEST 6.6.2-8, CLASS=DEVIANCE}

{: This test checks that a function-body contains at least
   one assignment to the function. }
{  The Pascal Standard specifies that at least one assignment
   statement which assigns a value to the function identifier
   must occur in the function block. }
{V3.1: Reclassified from ERRORHANDLING. }

program t6p6p2d8(output);
var
   a : integer;
function illegal(var b : integer) : integer;
var
   x : integer;
begin
   x:=b*2
end;

begin
   a:=2;
   a:=illegal(a);
   writeln(' DEVIATES...6.6.2-8, NO FUNCTION ASSIGNMENT');
end.
