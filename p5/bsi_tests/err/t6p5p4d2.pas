{TEST 6.5.4-2, CLASS=ERRORHANDLING, NUMBER = 4}

{: This test causes an error since the pointer-variable has an
   undefined value when it is dereferenced. }
{  Similar to 6.5.4-1. }
{V3.0: Writes and layout revised. }

program t6p5p4d2(output);
type
   rekord = record
               a : integer;
               b : boolean
            end;
var
   pointer : ^rekord;
begin
   pointer^.a:=1;  pointer^.b:=true;     {illegal}
   writeln(' ERROR...6.5.4-2');
   writeln(' ERROR NOT DETECTED')
end.
