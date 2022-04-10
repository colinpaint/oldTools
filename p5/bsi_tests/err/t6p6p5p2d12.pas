{TEST 6.6.5.2-12, CLASS=ERRORHANDLING, NUMBER= 17}

{: This program is in error since the value of the buffer-variable
   is not assignment-compatible with the variable-access,
   as a result of a call of read.}
{V3.1: New test. }

program t6p6p5p2d12(output);
type
   digits = (one,two,three,four);
   subrange = one..two;
var
   f : file of digits;
   sub : subrange;
begin
   rewrite(f);
   write(f,three);
   reset(f);
   read(f,sub);      { error }
   writeln(' ERROR...6.6.5.2-12');
   writeln(' ERROR NOT DETECTED')
end.
