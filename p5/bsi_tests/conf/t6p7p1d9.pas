{TEST 6.7.1-9, CLASS=CONFORMANCE}

{: This test checks that the set-constructor can denote all values
   allowed by the canonic set-type to which it belongs. }
{  This test employs sets of types which are subranges. }
{V3.1: New test. }

program t6p7p1d9(output);
const
   LoOut=-10000; LoIn=0; HiIn=255; HiOut=+10000;
type
   subset = LoOut..HiOut;
   subsubset = LoIn..HiIn;
   SsetType = set of subsubset;
var
   Sset  : SsetType;
   i     : subset;
   error : boolean;

begin
   error:=false;
   Sset:=[LoIn..HiIn];
   for i:=LoOut to HiOut do
      if (i<LoIn) or (i>HiIn) then
         error:=error or (i in Sset)
      else
         error:=error or not(i in Sset);
   if not error then
      writeln(' PASS...6.7.1-9')
   else
      writeln(' FAIL...6.7.1-9')
end.
