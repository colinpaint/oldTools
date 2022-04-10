{$p}
{TEST 6.6.5.3-11, CLASS=ERRORHANDLING, NUMBER=43}

{: This program is illegal since it uses the value of a pointer after
   a call of dispose. }
{V3.0: New test. }

program t6p6p5p3d11(output);
type
   pointer = ^integer;
var
   p : pointer;
begin
   new(p);
   p^ := 10;
   dispose(p);
   if p = nil then
      writeln(' POINTER = NIL')
   else
      if p^ = 10 then
         writeln(' POINTER STILL USABLE')
      else
         writeln(' POINTER VALUE UNKNOWN');
   writeln(' ERROR...6.6.5.3-11');
   writeln(' ERROR NOT DETECTED')
end.
