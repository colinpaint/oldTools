{TEST 6.6.5.3-22, CLASS=CONFORMANCE}

{: This test checks the extended forms of new and dispose. }
{  A variant can be left unspecified if it is at a deeper level of
   nesting than that specified by cn in new(p,c1,  ,cn). }
{V3.1: New test from BNI. }

program t6p6p5p3d22(output);
type
   two=1..2;
   colour=(blue,green);
   rec=record
          case col:colour of
             blue:(case two of
                      1:(case boo:boolean of
                            true:(a:char);
                            false:(b:1..4));
                      2:(c:char));
             green:(d:char);
end;
var
   p:^rec;
begin
   new(p,blue,1);
   p^.col:=blue;
   p^.boo:=false;
   p^.b:=2;
   p^.boo:=true;
   p^.a:='A';
   dispose(p,blue,1);
   writeln(' PASS...6.6.5.3-22')
end.
