{TEST 6.6.6.4-3, CLASS=CONFORMANCE}

{: This program tests that the required ordinal functions succ
   and pred. }
{V3.0: Comment and test completely rewritten to be more
   comprehensive. }

program t6p6p6p4d3(output);
type
   colourtype = (red,orange,yellow,green,blue);
var
   some    : orange..green;
   i       : integer;
   counter : integer;
   ok      : boolean;
   digit   : char;
begin
   counter:=0;

   if succ(false) and not pred(true) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.4-3, SUCC/PRED OF BOOLEAN-TYPE');

   i:=-11;
   ok:=true;
   while ok do begin
      i:=i+1;
      if i>10 then
         ok:=false
      else
         if (succ(pred(i))=i) and (succ(succ(i))=i+2) and
            (pred(succ(i))=i) and (pred(pred(i))=i-2) then
            counter:=counter+1
         else begin
            writeln(' FAIL...6.6.6.4-3, SUCC/PRED OF INTEGER-TYPE');
            ok:=false
            end
      end;

   for digit:='0' to '8' do
      if pred(succ(digit))=digit then
         counter:=counter+1
      else
         writeln(' FAIL...6.6.6.4-3, SUCC/PRED OF CHAR-TYPE');

   if (succ(red)=orange) and (succ(orange)=yellow) and
      (succ(yellow)=green) and (succ(green)=blue) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.4-3, SUCC OF ENUMERATED-TYPE');
   if (red=pred(orange)) and (orange=pred(yellow)) and
      (yellow=pred(green)) and(green=pred(blue)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.4-3, PRED OF ENUMERATED-TYPE');

   some:=yellow;
   if (succ(some)=green) and (pred(some)=orange) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.4-3, SUCC/PRED OF SUBRANGE-TYPE');

   if counter=34 then
      writeln(' PASS...6.6.6.4-3')
end.
