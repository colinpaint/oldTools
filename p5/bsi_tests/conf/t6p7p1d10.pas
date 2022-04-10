{TEST 6.7.1-10, CLASS=CONFORMANCE}

{: This test checks that the set-constructor can denote all values
   allowed by the canonic set-type to which it belongs. }
{  This test is intended to trap implementations which 'fold' their
   character set for the set of char implementation.  Implementations
   whose 'set of char' is incomplete also fail. }
{V3.1: New test. }

program t6p7p1d10(output);
type
   CharSet     = set of char;
var
   Cseta,Csetb : CharSet;
   cha,chb     : char;
   error       : boolean;

   function MinChar:char;
   { Returns least value in type char [see 6.4.2.2(d)] }
   begin MinChar:=chr(0) end;

   function MaxChar:char;
   { Should return largest value in type char, processor-dependent }
   var Zero,Space:integer;
   begin
      { These values MUST be in char; even alphabet not guaranteed. }
      Zero:=ord('0'); Space:=ord(' ');
      if      (Zero= 48) and (Space= 32) then
         { ISO, ASCII }         MaxChar:=chr(127)
      else if (Zero=240) and (Space= 64) then
         { EBCDIC }             MaxChar:=chr(255)
      else if (Zero= 27) and (Space= 45) then
         { CDC}                 MaxChar:=chr(63)
      else begin
         { unknown, users should modify to suit }
         MaxChar:=chr(0);
         writeln(' UNKNOWN CHARACTER SET - TEST INVALIDATED')
      end
   end;

begin
   error:=false;
   { Try all pair combinations }
   for cha:=MinChar to pred(MaxChar) do begin
      for chb:=succ(cha) to MaxChar do begin
         Cseta:=[cha]; Csetb:=[chb];
         error:=error or (cha in Csetb) or (chb in Cseta) or
                    not ((cha in Cseta) and (chb in Csetb))
      end;
   end;
   if not error then
      writeln(' PASS...6.7.1-10')
   else
      writeln(' FAIL...6.7.1-10')
end.
