{TEST 6.6.6.4-1, CLASS=CONFORMANCE}

{: This program checks that the implementation of the ord
   function. }
{V3.0: Comment and writes for failure revised. }

program t6p6p6p4d1(output);
type
   colourtype = (red,orange,yellow,green,blue);
var
   colour   : colourtype;
   some     : orange..green;
   i        : integer;
   counter  : integer;
   ok       : boolean;
begin
   counter:=0;
   if (ord(false)=0) and (ord(true)=1) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.4-1, ORD OF BOOLEAN-TYPE');

   if (ord(red)=0) and (ord(orange)=1) and
      (ord(yellow)=2) and (ord(green)=3) and
      (ord(blue)=4) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.4-1, ORD OF ENUMERATED-TYPE(1)');

   i:=-11;
   ok:=true;
   while ok do
   begin
      i:=i+1;
      if i>10 then
         ok:=false
      else
         if ord(i)=i then
            counter:=counter+1
         else
         begin
            ok:=false;
            writeln(' FAIL...6.6.6.4-1, ORD OF INTEGER-TYPE')
         end
   end;

   colour:=blue;
   some:=orange;
   if ord(colour)=4 then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.4-1, ORD OF ENUMERATED-TYPE(2)');

   if ord(some)=1 then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.4-1, ORD OF SUBRANGE-TYPE');

   if counter=25 then
      writeln(' PASS...6.6.6.4-1')
end.
