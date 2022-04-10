{TEST 6.6.6.1-1, CLASS=DEVIANCE}

{: This test checks that a standard function may not be
   used as a formal parameter. }
{  This program uses a standard function as a parameter
   to a procedure. }
{V3.1: Reclassified from IMPLEMENTATIONDEFINED. }

program t6p6p6p1d1(output);
procedure quidnunk(function a(b : integer):boolean);
   var
      x : integer;
   y : boolean;
   begin
      x:=5;
      y:=false;
      y:=a(x);
      if y then
         writeln(' STANDARD FUNCTIONS PERMITTED AS PARAMETERS')
      else
         writeln(' STANDARD FUNCTIONS NOT PERMITTED AS ',
                  'PARAMETERS, Y = ',y)
   end;
begin
   quidnunk(odd);
   writeln(' DEVIATES...6.6.6.1-1')
end.
