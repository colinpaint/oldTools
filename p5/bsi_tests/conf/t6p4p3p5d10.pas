{$s}
{TEST 6.4.3.5-10, CLASS=CONFORMANCE}

{: This test checks that packed non-text local files are
   processed correctly. }
{  This test explores the reading and writing of files of type other
   than text (or file of char) to establish that they are implemented.
   Test patterns are written and read back in a series of test
   procedures.  Only local files can be tested; whether external files
   can be of these types is implementation-dependent (and may be
   omitted from an implementation therefore).  This test involves
   packed pointer types. }
{V3.1: New test. }

program t6p4p3p5d10(output);
const
   Limit     = 191;
   MostNeg   = - maxint;
type
   PData     = ^ Data;
   Data      = packed record
                  k : integer;
                  p : PData
               end;
var
   result    : (pass,fail);
   f         : packed file of PData;
   head,temp : PData;
   i         : 1..Limit;
   j         : MostNeg..Limit;

begin
   { Construct linked list }
   head:=nil;
   for i:=1 to Limit do begin
      new(temp);
      with temp^ do begin k:=i; p:=head end;
      head:=temp
   end;

   { Write file of pointers }
   rewrite(f); temp:=head;
   for i:=1 to Limit-1 do begin
      f^:=temp^.p; put(f); temp:=temp^.p
   end;
   f^:=temp^.p; put(f);

   { Read file back and check it }
   result:=pass;  { anticipatory }
   reset(f); j:=Limit; temp:=head;
    while not eof(f) do begin
      if temp=nil then
         result:=fail
      else
         begin
            if (f^<>temp^.p) or (j<>temp^.k) then result:=fail;
            temp:=temp^.p
         end;
      get(f);
      j:=pred(j)
   end;
   if j<>0 then result:=fail;
   if result=pass then
      writeln(' PASS...6.4.3.5-10')
   else
      writeln(' FAIL...6.4.3.5-10')
end.
