{TEST 6.6.6.2-13, CLASS=ERRORHANDLING, NUMBER=32}

{: This program causes an error to occur by a call
   of the function sqr such that the resulting value does
   not exist with an integer parameter.  }
{  Repeatedly squaring a number > 1 should either overflow
   or give an 'infinite' result. }
{V3.1: New test. }

program t6p6p6p2d13(output);
var
   x, last: integer;
begin
   x := 2;  last := 1;
   while (x < maxint) and (last < x) do
      begin
      last := x;
      x := sqr(x);
      end;
   if last*last <> x then
      begin
      writeln(' ERROR...6.6.6.2-13');
      writeln(' ERROR NOT DETECTED')
      end
   else
      begin
      writeln(' ERROR...6.6.6.2-13');
      writeln(' TEST NOT RELEVANT, VALUE MORE THAN MAXINT')
      end;
end.
