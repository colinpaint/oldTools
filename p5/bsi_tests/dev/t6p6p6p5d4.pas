{TEST 6.6.6.5-4, CLASS=DEVIANCE}

{: This test checks that non-file parameters to the eof function
   are rejected. }
{V3.1: Program parameter removed and real changed to char. }

program t6p6p6p5d4(output);
type
   rekord = record
              a : integer;
              b : char
            end;
var
   fyle    : file of rekord;
   endfyle : boolean;
begin
   rewrite(fyle);
   endfyle:=eof(fyle^);
   writeln(' DEVIATES...6.6.6.5-4')
end.
