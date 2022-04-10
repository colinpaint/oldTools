{TEST 6.3-6, CLASS=DEVIANCE}

{: This program deviates because constants must not appear in
   their own definition. }
{  A constant may not appear in its own definition because
   the defining-point for the constant is at the end of the
   constant-definition.  In the following program the definition
   'ten = ten' is in the scope of the second use of 'ten' and
   accordingly is in error. }
{V3.0: Comment redrafted according to DP7185. }

program t6p3d6(output);
const
   ten = 10;

procedure p;
const
   ten = ten;
begin
   if ten=10 then
      writeln(' DEVIATES...6.3-6, SCOPE ERROR')
   else
      writeln(' DEVIATES...6.3-6, DEFINITION POINT ERROR')
end;

begin
   p
end.
