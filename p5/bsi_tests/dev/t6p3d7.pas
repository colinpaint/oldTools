{TEST 6.3-7, CLASS=DEVIANCE}

{: This test checks that nil is not accepted in a
   constant-definition-part. }
{V3.1: 'p^ := 1;' added, two 'p^' changed to 'p' and
   writeln s changed. }

program t6p3d7(output);
const
   nowhere = nil;
var
   p : ^integer;
begin
   new(p);
   p^ := 1;
   p := nil;
   if p = nowhere then
      writeln(' DEVIATES...6.3-7,(1)')
   else
      writeln(' DEVIATES...6.3-7,(2)')
end.
