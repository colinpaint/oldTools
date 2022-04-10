{TEST 6.6.5.2-14, CLASS=ERRORHANDLING, NUMBER= 18}

{: This test causes an error by writing an expression which is
   not assignment-compatible with the buffer-variable,
   as a result of a call of write. }
{V3.1: New test. }

program t6p6p5p2d14(output);
type
   subrange = 1..10;
var
   f : file of subrange;
   int : integer;
begin
   int := 4;
   rewrite(f);
   write(f,int*int);      { error }
   writeln(' ERROR...6.6.5.2-14');
   writeln(' ERROR NOT DETECTED')
end.
