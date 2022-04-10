{TEST 6.6.5.3-17, CLASS=ERRORHANDLING, NUMBER= 22}

{: This test causes an error by calling dispose(q,k1, ,km) when
   the variants in the variable identified by the pointer q, are
   different from those specified by the case-constants k1, ,km. }
{V3.1: New test. }

program t6p6p5p3d17(output);
type
   tagtype1 = boolean;
   tagtype2 = 1..2;
   tagtype3 = 3..4;
   rec = record
            case tag1 : tagtype1 of
            false : (q : integer);
            true  : (case tag2 : tagtype2 of
                     1 : (b1,b2 : boolean);
                     2 : (case tag3 : tagtype3 of
                          3 : (r : boolean);
                          4 : (s,t : integer)))
         end;
var
   ptr : ^ rec;
begin
   new(ptr);
   with ptr^ do
      begin
      tag1 := true;
      tag2 := 2;
      tag3 := 3;
      end;
   dispose(ptr,true,2,4);
   writeln(' ERROR...6.6.5.3-17');
   writeln(' ERROR NOT DETECTED')
end.
