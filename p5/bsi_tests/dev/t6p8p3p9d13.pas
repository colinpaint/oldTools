{TEST 6.8.3.9-13, CLASS=DEVIANCE}

{: This test checks whether a for-statement control-variable
   can be an identified-variable. }
{V3.1: Comment changed. }

program t6p8p3p9d13(output);
type
   int = ^integer;
var
   ptr:int;
   j:integer;
begin
   j:=0;
   new(ptr);
   for ptr^ := 0 to 10 do
      j:=j+1;
   writeln(' DEVIATES...6.8.3.9-13')
end.
