{TEST 6.6.5.3-16, CLASS=ERRORHANDLING, NUMBER= 21}

{: This test causes an error by calling dispose(q,k1, ,km) with
   an incorrect number of parameters. }
{  If a variable is created using the form new(p,c1, ,cn) and is
   then removed using dispose(q,k1, ,km), it is an error if m is
   not equal to n. }
{V3.1: New test. }

program t6p6p5p3d16(output);
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
   ptr : ^rec;
begin
   new(ptr,true,2,4);
   dispose(ptr,true,2);      { error }
   writeln(' ERROR...6.6.5.3-16');
   writeln(' ERROR NOT DETECTED')
end.
