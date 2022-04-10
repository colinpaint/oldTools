{TEST 6.8.3.5-3, CLASS=DEVIANCE}

{: This test contains invalid real case-constants with an integer
   case-expression. }
{  If the program is acceptable its effects could be expression. }
{V3.0: Class changed to DEVIANCE. Writes revised.
   Was previously 6.8.3.5-7. }

program t6p8p3p5d3(output);
var
   a,i:integer;
begin
   for i:=1 to 4 do
      case i of
      1,2: a:=1;
      2.5: writeln(' I = ',i,', CASE CONSTANT = 2.5');
      3:   a:=2;
      4e0: writeln(' I = ',i,', CASE CONSTANT = 4E0')
      end;
   writeln(' DEVIATES...6.8.3.5-3')
end.
