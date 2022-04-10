{TEST 6.4.3.3-4, CLASS=CONFORMANCE}

{: This test checks that a tag-field may be redefined
   elsewhere in the declaration part. }
{  Test similar to 6.4.3.3-2. }
{V3.0: Comment revised, and value test added. }

program t6p4p3p3d4(output);
type
   which = (white,black,warlock,sand);
var
   thing : which;
   polex : record
             case which:boolean of
               true: (realpart:real;
                      imagpart:real);
               false:(theta:real;
                      magnit:real)
           end;
begin
   thing := black;
   polex.which:=true;
   polex.realpart:=0.5;
   polex.imagpart:=0.8;
   if (thing = black) and polex.which then
      writeln(' PASS...6.4.3.3-4')
   else
      writeln(' FAIL...6.4.3.3-4')
end.
