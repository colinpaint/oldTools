{TEST 6.6.6.2-12, CLASS=ERRORHANDLING, NUMBER=32}

{: This program causes an error to occur by a call
   of the function sqr such that the resulting value does
   not exist with a real parameter.  }
{  Repeatedly squaring a number > 1.0 should either overflow
   or give an 'infinite' result. }
{V3.1: New test. }

program t6p6p6p2d12(output);
var
   x: real;
begin
   x := 2.0;
   while x < sqr(x) do
      x := sqr(x);
   if x <> sqr(x) then
      begin
      writeln(' ERROR...6.6.6.2-12');
      writeln(' ERROR NOT DETECTED')
      end
   else
      begin
      writeln(' ERROR...6.6.6.2-12');
      writeln(' TEST NOT RELEVANT, INFINITY')
      end;
end.
