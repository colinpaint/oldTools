{TEST 6.5.4-1, CLASS=ERRORHANDLING, NUMBER= 3}

{: This program causes an error by dereferencing a pointer whose
   value is nil. }
{  The store via the nil pointer may corrupt a Pascal system so that
   the error message is not printed. }
{V3.1: Comment changed. }

program t6p5p4d1(output);
type
   rekord = record
               a : integer;
               b : boolean
            end;
var
   pointer : ^rekord;
begin
   new(pointer);
   pointer:=nil;
   pointer^.a:=1;  pointer^.b:=true;     {illegal}
   writeln(' ERROR...6.5.4-1');
   writeln(' ERROR NOT DETECTED')
end.
