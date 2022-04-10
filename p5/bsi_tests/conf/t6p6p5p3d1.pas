{TEST 6.6.5.3-1, CLASS=CONFORMANCE}

{: This program checks that the procedure new has
   been implemented. Both forms of new are tested. }
{V3.1: Real removed. }

program t6p6p5p3d1(output);
type
   two      = (a,b);
   recone   = record
               i : integer;
               j : boolean
              end;
   rectwo   = record
               c : integer;
               case tagfield : two of
                  a : (m : integer);
                  b : (n : boolean)
              end;
   recthree = record
               c : integer;
               case tagfield : two of
                  a : (case tagfeeld : two of
                           a : (o : integer);
                           b : (p : char));
                  b : (q : integer)
              end;
var
   ptrone : ^recone;
   ptrtwo : ^rectwo;
   ptrthree : ^recthree;
begin
   new(ptrone);
   new(ptrtwo,a);
   ptrtwo^.tagfield:=a;
   new(ptrthree,a,b);
   ptrthree^.tagfield:=a;
   { This line changed from original, which appears to be incorrect }
   {ptrthree^.tagfeeld:=a;}
   ptrthree^.tagfeeld:=b;
   writeln(' PASS...6.6.5.3-1')
end.
