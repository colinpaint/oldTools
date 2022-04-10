{TEST 6.4.3.3-9, CLASS=DEVIANCE}

{: This test deviates by assigning an incompatible
   value to an empty record. }
{  This program is similar to 6.4.3.3-3. }
{V3.1: Comment changed. }

program t6p4p3p3d9(output);
type
   statuskind  = (defined,undefined);
   emptykind   = record end;
var
   empty : emptykind;
   number: record
            case status:statuskind of
               defined  : (i : integer);
               undefined: (e : emptykind)
            end;
begin
   with number do
   begin
      status:=undefined;
      e:=666
   end;
   writeln(' DEVIATES...6.4.3.3-9')
end.
