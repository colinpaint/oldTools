{TEST 6.4.3.3-11, CLASS=ERRORHANDLING, NUMBER=43}

{: This program causes an error by accessing a field with an
   undefined value. }
{  The undefined value arises because when a change of variant
   occurs, those fields associated with the new variant come into
   existence with undefined values. }
{V3.0: Comment changed into better English.  Write
   revised. Was previously 6.4.3.3-6. }

program t6p4p3p3d11(output);
type
   two = (a,b);
var
   variant : record
               case tagfield:two of
                  a : (m : integer;
                       l : integer);
                  b : (n : integer;
                       o : integer)
             end;
   i : integer;
begin
   variant.tagfield:=a;
   variant.m:=1;
   variant.l:=1;
   variant.tagfield:=b;
   variant.n:=1;
   i:=variant.o;     { illegal }
   writeln(' ERROR...6.4.3.3-11');
   writeln(' ERROR NOT DETECTED')
end.
