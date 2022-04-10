{TEST 6.6.5.3-5, CLASS=ERRORHANDLING, NUMBER=24}

{: In this test an error is caused by the
   pointer variable of dispose being undefined. }
{  The error should be detected at run-time or earlier. }
{V3.0: Writes revised. Was previously 6.6.5.3-4. }

program t6p6p5p3d5(output);
type
   rekord = record
             a : integer;
             b : boolean
            end;
var
   ptr : ^rekord;
begin
   dispose(ptr);
   writeln(' ERROR...6.6.5.3-5');
   writeln(' ERROR NOT DETECTED')
end.
