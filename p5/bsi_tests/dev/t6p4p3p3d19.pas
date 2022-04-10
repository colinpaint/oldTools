{TEST 6.4.3.3-19, CLASS=DEVIANCE}

{: Subrange-types cannot be used as tag-types in a record. }
{V3.1: New test from BNI. }

program t6p4p3p3d19(output);
type
    rec=record
           case tag:1..2 of
              1:(i:integer);
              2:(c:char);
           end;
begin
    writeln(' DEVIATES...6.4.3.3-19')
end.
