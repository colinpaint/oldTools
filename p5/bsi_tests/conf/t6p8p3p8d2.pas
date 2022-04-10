{TEST 6.8.3.8-2, CLASS=CONFORMANCE}

{: This test checks that the processor will accept a while-statement
   containing no statements. }
{V3.0: Writes revised. }

program t6p8p3p8d2(output);
var
   a:integer;

function bool:boolean;
begin
   a:=a+1;
   bool:= (a>=5)
end;

begin
   a:=0;
   while not bool do ;
   if (a=5) then
      writeln(' PASS...6.8.3.8-2')
   else
      writeln(' FAIL...6.8.3.8-2')
end.
