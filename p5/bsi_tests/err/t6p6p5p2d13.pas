{TEST 6.6.5.2-13, CLASS=ERRORHANDLING, NUMBER= 17}

{: This program is in error since the value of the buffer-variable
   is not assignment-compatible with the variable-access,
   as a result of a use of get. }
{V3.1: New test. }

program t6p6p5p2d13(output);
type
   digits = (one,two,three,four);
   subrange = one..two;
var
   f : file of digits;
   sub : subrange;
begin
   rewrite(f);
   f^ := three;
   put(f);
   reset(f);
   sub := f^;        { error }
   get(f);
   writeln(' ERROR...6.6.5.2-13');
   writeln(' ERROR NOT DETECTED')
end.
