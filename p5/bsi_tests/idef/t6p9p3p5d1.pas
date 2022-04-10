{TEST 6.9.3.5-1, CLASS=IMPLEMENTATIONDEFINED, NUMBER=13}

{: This test checks that boolean variables are correctly written
   to textfiles, and determines the case of the characters used.}
{V3.1: revised to indicate case of characters,
   also renumbered from 6.9.3.6-1. }

program t6p9p3p5d1(output);
var
   f:text;
   pass:boolean;
   c   :char;
   upper,lower,caseb:packed array[1..11] of char;
   i:integer;
begin
   rewrite(f);
   upper:='TRUE, FALSE';
   lower:='true, false';
   caseb := upper;
   pass:=true;
   write(f,pass,not pass);
   writeln(f);
   reset(f);
   while f^=' ' do
      read(f,c);
   for i:=1 to 4 do
      begin
      read(f,c);
      if c = upper[i] then
         caseb[i] := 'U'
      else if c = lower[i] then
         caseb[i] := 'L'
      else
         pass:=false
      end;
   while f^=' ' do
      read(f,c);
   for i:=7 to 11 do
      begin
      read(f,c);
      if c = upper[i] then
         caseb[i] := 'U'
      else if c = lower[i] then
         caseb[i] := 'L'
      else
         pass:=false
      end;
   if pass then
      begin
      writeln(' OUTPUT FROM TEST...6.9.3.5-1');
      writeln(' CASE OF BOOLEAN VALUES');
      if lower = upper then
         writeln(' ONLY ONE CASE OF CHARACTERS IMPLEMENTED')
      else
         begin
         writeln(' ', upper);
         writeln(' ', caseb);
         end;
      writeln(' IMPLEMENTATION DEFINED...6.9.3.5-1')
      end
   else
      writeln(' FAIL...6.9.3.5-1')
end.
