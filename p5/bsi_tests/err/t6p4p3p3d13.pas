{$u}
{TEST 6.4.3.3-13, CLASS=ERRORHANDLING, NUMBER=43}

{: This program causes an error by accessing a field with an
   undefined value. }
{  Similar to 6.4.3.3-11, except that no tag-field is used.
   A change of variant occurs by reference to a field associated
   with a new variant. Again, these fields come into existence
   undefined. }
{V3.0: Write revised, and comment revised. Was previously 6.4.3.3-8. }

program t6p4p3p3d13(output);
type
   two = (a,b);
var
   variant : record
               case two of
                  a:(m:integer;
                     l:integer);
                  b:(n:integer;
                     o:integer)
             end;
   i : integer;
begin
   variant.n:=1;
   variant.o:=1;
   variant.m:=1;
   i:=variant.l;     {illegal}
   writeln(' ERROR...6.4.3.3-13');
   writeln(' ERROR NOT DETECTED')
end.
