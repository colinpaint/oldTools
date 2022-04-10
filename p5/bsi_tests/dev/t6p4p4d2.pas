{TEST 6.4.4-2, CLASS=DEVIANCE}

{: This test deviates since the domain-type of the pointer-type
   is not declared. }
{V3.1: Real removed and comment changed. }

program t6p4p4d2(output);
var
   pointer1 : ^integer;
   pointer2 : ^rekord;
begin
   new(pointer1);
   pointer1:=nil;
   new(pointer2);
   pointer2:=nil;
   writeln(' DEVIATES...6.4.4-2')
end.
