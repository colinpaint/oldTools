{$u}
{TEST 6.4.3.3-12, CLASS=ERRORHANDLING, NUMBER= 2}

{: This program accesses a field of a variant which is not the
   current variant, thereby changing the selected variant, but
   causes an error due to the undefined value. }
{  A variant-part that does not contain a tagfield shall be assumed
   to have a virtual tagfield.  A reference to a field shall
   attribute the value appropriate to the variant of the field to
   that virtual tagfield.  However, any change of variant shall
   cause the fields of the variant to be totally-undefined
   unless they have been attributed a value. }
{V3.0: Comment and writing revised. Was previously 6.4.3.3-7. }

program t6p4p3p3d12(output);
type
   two = (a,b);
var
   variant : record
               case two of
                  a : (m : integer);
                  b : (n : integer)
             end;
   i : integer;
begin
   variant.m:=2;
   i:=variant.n;     { illegal }
   writeln(' ERROR...6.4.3.3-12');
   writeln(' ERROR NOT DETECTED')
end.
