{TEST 6.6.5.3-9, CLASS=ERRORHANDLING, NUMBER=25}

{: This program causes an error to occur, as a variable
   created by the long form of new is used as the variable
   in an assignment-statement. }
{  Similar to 6.6.5.3-8. }
{V3.0: Writes revised. Was previously 6.6.5.3-8. }

program t6p6p5p3d9(output);
type
   two      = (a,b);
   rekord   = record
               case tagfield:two of
                  a : (m : boolean);
                  b : (n : char)
              end;
var
   ptr : ^rekord;
   r   : rekord;
begin
   new(ptr,b);
   r.tagfield:=b;
   r.n:='A';
   ptr^:=r;
   writeln(' ERROR...6.6.5.3-9');
   writeln(' ERROR NOT DETECTED')
end.
