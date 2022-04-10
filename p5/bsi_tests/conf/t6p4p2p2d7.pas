{TEST 6.4.2.2-7, CLASS=CONFORMANCE}

{: This test explores the use of type-char as an enumeration-type. }
{  The Standard specifies that the ord of the first character in
   the char type shall be zero, and that the rest shall have
   consecutive ordinal values.  However, there is no easy way
   to find the last character in the set, and the function
   maxord is an approximation to this.  It uses known facts about
   character sets to guess at the set and make a first attempt
   at finding this value.  If a processor does not comply with the
   assumptions, maxord may have to be recoded to return the correct
   value for that processor.
   The test uses type  char in a number of enumeration contexts. }
{V3.1: Unnecessary defect removed. }

program t6p4p2p2d7(output);
type
   atype=array[char]of char;
   natural=0..maxint;
var
   ordi:natural;
   maxchar:char;
   a,b:atype;
   ch:char;
   ok:boolean;

function maxord:natural;
   function max(a,b:char):char;
   begin
      if a>b then max:=a else max:=b
   end; { of max }
begin
   if ord('9') = 249 then
      { EBCDIC } maxord:=255
   else if ord('9') = 57 then
      { ASCII/ISO } maxord:=127
   else
      { UNKNOWN char set }
      maxord:=ord(max(';',max('Z',max('z','9'))))
end; { of maxord }

begin
   ok := true;
   maxchar := chr(maxord);
   for ordi:=0 to ord(maxchar) do
      a[chr(ordi)]:=chr(ordi);
   for ch := chr (0) to maxchar do
      b [ch] := a [ch];
   for ch:=chr(0) to maxchar do
      if b[ch] <> ch then ok:=false;
   for ordi:=1 to ord(maxchar) do
      if (pred(chr(ordi)) <> chr(pred(ordi))) or
      (succ(chr(pred(ordi))) <> chr(ordi)) then
         ok := false;
   if ok then
      writeln(' PASS...6.4.2.2-7')
   else
      writeln(' FAIL...6.4.2.2-7')
end.
