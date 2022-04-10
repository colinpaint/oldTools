{TEST 6.6.6.3-1, CLASS=CONFORMANCE}

{: This program checks the implementation of the transfer
   functions trunc and round. }
{V3.1: Output of FAIL added. }

program t6p6p6p3d1(output);
var
   i,
   truncstatus,
   roundstatus : integer;
   j : real;
begin
   truncstatus:=0;
   roundstatus:=0;
   if (trunc(3.7)=3) and (trunc(-3.7)=-3) then
      truncstatus:=truncstatus+1
   else
      writeln(' FAIL...6.6.6.3-1, TRUNC FUNCTION');

   if (round(3.7)=4) and (round(-3.7)=-4) then
      roundstatus:=roundstatus+1
   else
      writeln(' FAIL...6.6.6.3-1, ROUND FUNCTION');

   j:=0;
   for i:=-333 to 333 do
   begin
      j:=i div 100;
      if j<0 then
         if (trunc(j-0.5)=round(j)) then
            begin
               truncstatus:=truncstatus+1;
               roundstatus:=roundstatus+1
            end
         else
            writeln(' FAIL...6.6.6.3-1, TRUNC/ROUND FUNCTIONS(1)')
      else
         if (trunc(j+0.5)=round(j)) then
            begin
               truncstatus:=truncstatus+1;
               roundstatus:=roundstatus+1
            end
         else
            writeln(' FAIL...6.6.6.3-1, TRUNC/ROUND FUNCTIONS(2)')
   end;

   if (truncstatus=668) and (roundstatus=668) then
      writeln(' PASS...6.6.6.3-1')
  else
      writeln(' FAIL...6.6.6.3-1')
end.
