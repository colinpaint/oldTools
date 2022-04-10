{TEST 6.8.3.9-18, CLASS=DEVIANCE}

{: This test checks that a control-variable cannot be
   used as a control-variable within the controlled
   statement. }
{V3.1: Reclassified from ERRORHANDLING. }

program t6p8p3p9d18(output);
var
   i,j:integer;
begin
   j:=0;
   for i:=1 to 10 do
      for i:=1 to 10 do
         j:=j+1;
   writeln(' DEVIATES...6.8.3.9-18, FOR STATEMENT');
end.
