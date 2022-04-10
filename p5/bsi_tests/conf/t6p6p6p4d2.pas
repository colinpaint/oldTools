{TEST 6.6.6.4-2, CLASS=CONFORMANCE}

{: This program checks the implementation of chr. }
{V3.0: Comment and write for FAIL revised. }

program t6p6p6p4d2(output);
var
   letter : char;
   counter : integer;
begin
   counter:=0;

   for letter:='0' to '9' do
      if chr(ord(letter))=letter then
         counter:=counter+1;

   if counter=10 then
      writeln(' PASS...6.6.6.4-2')
   else
      writeln(' FAIL...6.6.6.4-2')
end.
