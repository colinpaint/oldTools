{TEST 6.7.2.3-1, CLASS=CONFORMANCE}

{: This test checks the operation of the Boolean operators. }
{V3.0: Writes revised. }

program t6p7p2p3d1(output);
var
   a,b,c : boolean;
   counter : integer;
begin
   counter:=0;
   a:=false;
   b:=false;
   { OR truth table }

   if a or b then
      writeln(' FAIL...6.7.2.3-1, OR OPERATOR(1)')
   else
   begin
      b:=true;
      if a or b then
      begin
         a:=true;
         b:=false;
         if a or b then
         begin
            b:=true;
            if a or b then
               counter:=counter+1
            else
               writeln(' FAIL...6.7.2.3-1, OR OPERATOR(2)')
         end
         else
            writeln(' FAIL...6.7.2.3-1, OR OPERATOR(3)')
      end
      else
         writeln(' FAIL...6.7.2.3-1, OR OPERATOR(4)')
   end;

   { AND truth table }
   a:=false;
   b:=false;
   if a and b then
      writeln(' FAIL...6.7.2.3-1, AND OPERATOR(1)')
   else
   begin
      b:=true;
      if a and b then
         writeln(' FAIL...6.7.2.3-1, AND OPERATOR(2)')
      else
      begin
         a:=true;
         b:=false;
         if a and b then
            writeln(' FAIL...6.7.2.3-1, AND OPERATOR(3)')
         else
         begin
            b:=true;
            if a and b then
               counter:=counter+1
            else
               writeln(' FAIL...6.7.2.3-1, AND OPERATOR(4)')
         end
      end
   end;

   { NOTE: NOT is sometimes badly implemented by wordwise
           complementation, and for this reason the following
           two tests may fail. }

   if (not false)=true then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, NOT OPERATOR(1)');

   if (not true)=false then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, NOT OPERATOR(2)');

   c:=false;
   a:=true;
   b:=false;
   if (a or b)=(b or a) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, BOOLEAN COMMUTATION');

   if ((a or b)or c)=(a or(b or c)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, BOOLEAN ASSOCIATIVITY');

   if (a and(b or c))=((a and b)or(a and c)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, BOOLEAN DISTRIBUTION');

   if not(a or b)=((not a) and(not b)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, DEMORGAN1');

   if not(a and b)=((not a) or (not b)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, DEMORGAN2');

   if not(not a)= a then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, BOOLEAN INVERSION');

   if counter=10 then
      writeln(' PASS...6.7.2.3-1')
end.
