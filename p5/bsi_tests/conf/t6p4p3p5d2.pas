{TEST 6.4.3.5-2, CLASS=CONFORMANCE}

{: This test checks that textfiles adhere to the structure laid
   down in the Standard. }
{V3.1: Program parameter removed. }

program t6p4p3p5d2(output);
var
   file1 : text;
   crash : boolean;

procedure ahaa;
begin
   crash:=true;
   writeln(' FAIL...6.4.3.5-2')
end;

begin
   crash:=false;
   rewrite(file1);
   writeln(file1);                  { no characters, but a linemarker}
   writeln(file1,'ABC');            { characters and linemarker}
   reset(file1);
   if eoln(file1) and (file1^=' ') then get(file1)
   else ahaa;
   if file1^='A' then get(file1)
   else ahaa;
   if file1^='B' then get(file1)
   else ahaa;
   if file1^='C' then get(file1)
   else ahaa;
   if eoln(file1) and (file1^=' ') then get(file1)
   else ahaa;
   if not eof(file1) then ahaa;
   if not crash then
      writeln(' PASS...6.4.3.5-2')
end.
