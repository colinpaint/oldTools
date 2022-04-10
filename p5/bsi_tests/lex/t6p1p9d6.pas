{TEST 6.1.9-6, CLASS=IMPLEMENTATIONDEFINED, NUMBER=16}

{: This program checks whether the equivalent symbol can be used for
   the reference representation of up-arrow. }
{  It will not be possible to convert this program if the commercial
   at character is not available. }
{V3.1: Test of square brackets moved to 6.1.9-5, comment changed. }

program t6p1p9d6(output);
type
   rec = record
           a,b:integer
         end;
   ptr1=@rec;  {If @ is not implemented, this will give bad syntax. }
   ptr2=^rec;
begin
   writeln(' OUTPUT FROM TEST...6.1.9-6' );
   writeln(' EQUIVALENT SYMBOL TO UP-ARROW IS IMPLEMENTED');
   writeln(' IMPLEMENTATION DEFINED...6.1.9-6')
end.
