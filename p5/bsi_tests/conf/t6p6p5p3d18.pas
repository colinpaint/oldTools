{TEST 6.6.5.3-18, CLASS=CONFORMANCE}

{: This test checks that new and dispose can be applied to any kind
   of expressions with pointer values. }
{V3.1: New test from BNI. }

program t6p6p5p3d18(output);
type
   rec=record
          case tag:boolean of
             true:(a:integer);
             false:(b:^integer);
       end;
   pint=^integer;
var
   v:array[1..2] of ^rec;
   p:^pint;
begin
   new(p);
   new(p^);
   p^^:=1;
   new(v[p^^],true);
   v[1]^.tag:=true;
   v[1]^.a:=p^^+2;
   new(v[p^^+1],false);
   v[2]^.tag:=false;
   new(v[2]^.b);
   v[2]^.b^:=3;
   if (v[1]^.a=v[2]^.b^)
      then writeln (' PASS...6.6.5.3-18')
      else writeln (' FAIL...6.6.5.3-18')
end.
