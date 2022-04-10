{TEST 6.7.2.4-5, CLASS=CONFORMANCE}

{: This test checks the set operators, with all patterns possible. }
{  There are 64 (2 to 6th power) set values, so 4096 tests are made,
   which may be long (esp for bigger sets).  Another test provided
   in the suite is more economical, but less exhaustive. }
{V3.1: New test. }

program t6p7p2p4d5(output);
const
   Limit    = 64; { 2 to power of  cardinality of ET }
type
   ET       = (A,B,C,D,E,F);
   esetType = set of ET;
   erayType = array[ET] of boolean;
   Range    = 1..Limit;
var
   ev       : ET;
   s1,s2    : esetType;
   mt,
   vr,v1,v2 : erayType;
   r1,r2    : Range;
   error    : boolean;

   procedure DoIt;
   { Do all operations and check them for this pair of values. }

      procedure Union(var aa:erayType; ab,ac:erayType);
      var i:ET;
      begin
         for i:=A to F do aa[i]:=ab[i] or ac[i]
      end;

      procedure Intersection(var aa:erayType; ab,ac:erayType);
      var i:ET;
      begin
         for i:=A to F do aa[i]:=ab[i] and ac[i]
      end;

      procedure Difference(var aa:erayType; ab,ac:erayType);
      var i:ET;
      begin
         for i:=A to F do aa[i]:=ab[i] and not ac[i]
      end;

      procedure Check(SetOfE:esetType; VecOfE:eraytype);
      var i:ET;
      begin
         for i:=A to F do
            if VecOfE[i] then
               begin
                  if not (i in SetOfE) then error:=true
               end
            else
               if (i in SetOfE) then error:=true
      end;

   begin { of body of DoIt }
      Union       (vr,v1,v2); Check(s1+s2,vr);
      Intersection(vr,v1,v2); Check(s1*s2,vr);
      Difference  (vr,v1,v2); Check(s1-s2,vr)
   end;

   procedure Perm(k:Range; var sp:esetType; var vp:erayType);
   { Produce all permutations of sp and vp according to k }
   var x:ET;
   begin
      { What member to alter }
      x:=A;
      while not odd(k) do begin
         x:=succ(x); k:=k div 2
      end;
      { Alter the inclusion status of that value }
      if x in sp then sp:=sp-[x] else sp:=sp+[x];
      vp[x]:=not vp[x]
   end;

begin { of body of main program }
   error:=false;
   for ev:=A to F do mt[ev]:=false;

   s1:=[]; v1:=mt;
   r1:=1;
   while r1 <> Limit do begin
      s2:=[]; v2:=mt;
      r2:=1;
      while r2 <> Limit do begin
         DoIt;
         Perm(r2,s2,v2);
         r2:=succ(r2)
      end;
      Perm(r1,s1,v1);
      r1:=succ(r1)
   end;

   if not error then
      writeln(' PASS...6.7.2.4-5')
   else
      writeln(' FAIL...6.7.2.4-5')
end.
