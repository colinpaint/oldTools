{$s}
{TEST 6.4.3.5-11, CLASS=CONFORMANCE}

{: This test checks that two local files with similar identifiers are
   correctly distinguished. }
{  If local files are created with an external catalogue file name
   solely derived from their identifier, then it is possible that
   long identifiers may be truncated, yielding pseudonym problems,
   or that files in different scopes may have synonymous names.
   If implementations require external names then it is their
   responsibility to ensure distinctness to conform to
   the Standard.  }
{V3.1: New test. }

program t6p4p3p5d11(output);
const
   Limit=111;
type
   Three = (Nul,One,Two);
   Data = record
           case p:Three of
              Two: (q,r:integer);
              One: (s:boolean);
              Nul: ()
          end;
   FileKind = file of Data;
var
   TryThisParticularFile,
   TryThisParticularFyle : FileKind;
   a : Data;
   j : 0..maxint;
   ix : integer;
   result : (pass,fail);

function random : integer;
   var
      ni,k,r:integer;
   begin
      k:=ix div 177; r:=ix-k*177;
      ni:=-2*k+171*r;
      if ni<0 then ix:=ni+30269 else ix:=ni;
      random:=ix
   end;

   procedure first;
   begin
      a.p:=Nul
   end;

   procedure next;
   var try:0..2;
   begin
      try:=random mod 3;
      case try of
         0: a.p:=Nul;
         1: begin
               a.p:=One; a.s:=random>15000
            end;
         2: begin
               a.p:=Two; a.q:=random; a.r:=random
            end
      end
   end;

   procedure Create(var g:FileKind);
   var
      i : 1..Limit;
   begin
      rewrite(g);
      ix:=1; first;
      for i:=1 to Limit do begin
         g^:=a; put(g); next
      end;
   end;

   procedure Check(var g:FileKind);

      function notsame:boolean;
      begin
         if a.p <> g^.p then
            notsame:=true
         else begin
            case a.p of
               Nul: notsame:=false;
               One: notsame:=a.s<>g^.s;
               Two: notsame:=(a.q<>g^.q)or(g^.r<>a.r)
            end
         end
      end;

   begin
      reset(g); j:=0;
      ix:=1; first;
      while not eof(g) do begin
         if notsame then result:=fail;
         j:=succ(j); get(g); next
      end;
      if j<>Limit then result:=fail
   end;

   procedure Nested;
   var
      TryThisParticularFile:FileKind;
   begin
      Create(TryThisParticularFile);
      Check(TryThisParticularFile);
   end;


begin
   result:=pass;  { anticipatory }
   Create(TryThisParticularFile);  { first one }
   Nested;                        { second, same identifier spelling }
   Create(TryThisParticularFyle); {third, similar identifier spelling}
   Check(TryThisParticularFile);
   Check(TryThisParticularFyle);
   if result=pass then
      writeln(' PASS...6.4.3.5-11')
   else
      writeln(' FAIL...6.4.3.5-11')
end.
