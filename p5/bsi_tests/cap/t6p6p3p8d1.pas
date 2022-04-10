{TEST 6.6.3.8-1, CLASS=LEVEL1, SUBCLASS=DEVIANCE}

{: The actual parameters shall possess the same index-types
   as the corresponding formal parameters that occur in
   a conformant array parameter specification. This is not
   the case in this program, as the index-types differ, so
   it deviates from the Standard. }
{V3.0: New test. }

program t6p6p3p8d1(output);
var
   a : array[false..true] of real;
procedure p(var r : array[low..high : integer] of real);
   var
      i : integer;
   begin
   for i := low to high do
      r[i] := i
   end;
begin
   p(a);
   writeln(' DEVIATES...6.6.3.8-1')
end.
