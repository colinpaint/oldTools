{TEST 6.4.3.3-7, CLASS=CONFORMANCE}

{: This test contains negative integers as case-constants in a
   record-type. }
{  Some compilers do not accept them. }
{V3.1: New test from BNI. }

program t6p4p3p3d7(output);
type
    level = -1..1;
    state = record
               case l:level of
                  0:(stable:integer);
                  1:(positive:integer);
                  -1:(negative:integer);
            end;
var
    st:state;
begin
    st.l:=-1;
    st.negative:=10;
    writeln(' PASS...6.4.3.3-7')
end.
