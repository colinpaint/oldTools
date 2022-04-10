{TEST 6.4.3.3-20, CLASS=DEVIANCE}

{: Enumerated-types cannot be used as tag-types in a record. }
{V3.1: New test from BNI. }

program t6p4p3p3d20(output);
type
    rec=record
           case tag:(a,b) of
              a:(i:integer);
              b:(c:character);
        end;
begin
    writeln(' DEVIATES...6.4.3.3-20')
end.
