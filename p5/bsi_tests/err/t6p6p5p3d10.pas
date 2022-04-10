{TEST 6.6.5.3-10, CLASS=ERRORHANDLING, NUMBER=25}

{: This program causes an error to occur, as a variable
   created by the long form of new is used as
   an actual parameter. }
{  Similar to 6.6.5.3-8. }
{V3.1: Tag-field assignment added. }

program t6p6p5p3d10(output);
type
   two      = (a,b);
   rekord   = record
               case tagfield:two of
                  a : (m : boolean);
                  b : (n : char)
              end;
var
   ptr : ^rekord;
procedure error(c : rekord);
   begin
      writeln(' ERROR...6.6.5.3-10');
      writeln(' ERROR NOT DETECTED')
   end;
begin
   new(ptr,a);
   ptr^.tagfield := a;
   ptr^.m:=true;
   error(ptr^)
end.
