{TEST 6.6.5.3-4, CLASS=ERRORHANDLING, NUMBER=23}

{: This program causes an error to occur as the pointer
   parameter of dispose is nil. }
{  The error should be detected at run-time or earlier. }
{V3.0: Writes revised. Was previously 6.6.5.3-3. }

program t6p6p5p3d4(output);
type
   rekord = record
            a : integer;
            b : boolean
           end;
var
   ptr : ^rekord;
begin
   ptr:=nil;
   dispose(ptr);
   writeln(' ERROR...6.6.5.3-4');
   writeln(' ERROR NOT DETECTED')
end.
