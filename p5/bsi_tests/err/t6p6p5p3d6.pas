{$i}
{TEST 6.6.5.3-6, CLASS=ERRORHANDLING, NUMBER= 5}

{: This program causes an error to occur as a variable
   which is currently an actual variable parameter is
   referred to by the pointer parameter of dispose. }
{  The error should be detected at run-time or earlier. }
{V3.0: Writes revised. Procedure heading corrected by inserting 'var'.
   Was previously 6.6.5.3-5. }

program t6p6p5p3d6(output);
var
   ptr : ^integer;
procedure error(var a:integer);
   var
      x : integer;
   begin
      x:=a*2;
      dispose(ptr)
   end;
begin
   new(ptr);
   ptr^:=6;
   error(ptr^);
   writeln(' ERROR...6.6.5.3-6');
   writeln(' ERROR NOT DETECTED')
end.
