{TEST 6.4.1-1, CLASS=CONFORMANCE}

{: This program tests to see that pointer-types can be
   declared anywhere in the type-definition-part. }
{  This freedom is explicitly permitted in the Standard. }
{V3.1: Real changed to integer. }

program t6p4p1d1(output);
type
   ptr1     = ^ polar;
   polar    = record r,theta : integer end;
   purelink = ^ purelink;
   ptr2     = ^ person;
   ptr3     = ptr2;
   person   = record
                  mother,father : ptr2;
                  firstchild    : ptr2;
                  nextsibling   : ptr3
              end;
begin
   writeln(' PASS...6.4.1-1')
end.
