{TEST 6.6.5.3-8, CLASS=ERRORHANDLING, NUMBER=25}

{: This program causes an error to occur, as a variable
   created by the use of the long form of new is used
   as an operand in an expression. }
{  The error should be detected at run-time or earlier. }
{V3.1: Tag-field assignment added. }

program t6p6p5p3d8(output);
type
   two      = (a,b);
   rekord   = record
               case tagfield:two of
                  a : (m : boolean);
                  b : (n : char)
              end;
var
   ptr      : ^rekord;
   r        : rekord;
begin
   new(ptr,a);
   ptr^.tagfield := a;
   ptr^.m:=true;
   r:=ptr^;
   writeln(' ERROR...6.6.5.3-8');
   writeln(' ERROR NOT DETECTED')
end.
