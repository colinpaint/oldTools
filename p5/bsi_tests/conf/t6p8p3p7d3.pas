{TEST 6.8.3.7-3, CLASS=CONFORMANCE}

{: This test checks that an apparently infinite loop is allowed
   by the processor. }
{  Some processors may detect the loop as being infinite. }
{V3.0: Comment and writes revised. }

program t6p8p3p7d3(output);
label
   100;
const
   eternity = false;
var
   i:integer;
begin
   i:=0;
   repeat
      i:=i+1;
      if (i>50) then
         goto 100
   until eternity;
100:
   writeln(' PASS...6.8.3.7-3')
end.
