{TEST 6.4.3.3-10, CLASS=ERRORHANDLING, NUMBER= 2}

{: This test causes an error by accessing a field of an inactive
   variant. }
{  The Pascal Standard states that the value of a tag-field shall
   determine which variant is active in determining the value of
   a variant-part.  It shall be an error if any field-identifier
   is used unless the value of the tag-field is associated with
   its variant.  This program causes this error to occur. }
{V3.0: Comment and writing revised. Was previously 6.4.3.3-5. }

program t6p4p3p3d10(output);
type
   two = (a,b);
var
   variant : record
               case tagfield:two of
                  a: (m:integer);
                  b: (n:integer)
             end;
   i : integer;
begin
   variant.tagfield:=a;
   variant.m:=1;
   i:=variant.n;     {illegal}
   writeln(' ERROR...6.4.3.3-10');
   writeln(' ERROR NOT DETECTED')
end.
