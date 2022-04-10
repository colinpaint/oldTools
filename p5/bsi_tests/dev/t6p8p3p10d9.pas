{TEST 6.8.3.10-9, CLASS=DEVIANCE}

{: This test tries to access a non-existent field of a record. }
{V3.1: New test from BNI. }

program t6p8p3p10d9(output);
var
   rec:record
          i:integer;
          rec:record
                 i:integer;
                 rec:record
                        i:integer;
                     end;
              end;
       end;
begin
   with rec,rec do
      begin
         rec.i:=5;
         rec.rec.i:=7; {illegal}
      end;
   writeln(' DEVIATES...6.8.3.10-9')
end.
