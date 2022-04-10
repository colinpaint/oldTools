{TEST 6.6.5.2-15, CLASS=ERRORHANDLING, NUMBER= 18}

{: This test causes an error by writing an expression which is
   not assignment-compatible with the buffer-variable,
   as a result of the use of put. }
{V3.1: New test. }

program t6p6p5p2d15(output);
type
   subrange = 1..10;
var
   f : file of subrange;
   int : integer;
begin
   int := 4;
   rewrite(f);
   f^ := int*int;         { error }
   put(f);
   writeln(' ERROR...6.6.5.2-15');
   writeln(' ERROR NOT DETECTED')
end.
