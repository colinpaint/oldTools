{TEST 6.9.1-10, CLASS=ERRORHANDLING, NUMBER= 55}

{: This test causes an error by reading an integer whose value is
   not assignment-compatible with the type possessed by the
   variable-access. }
{V3.1: New test. }

program t6p9p1d10(output);
type
   subrange = 1..10;
var
   sub : subrange;
   f : text;
begin
   rewrite(f);
   writeln(f,'1234');
   reset(f);
   read(f,sub);
   writeln(' ERROR...6.9.1-10');
   writeln(' ERROR NOT DETECTED')
end.
