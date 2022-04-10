{TEST 6.8.2.4-1, CLASS=CONFORMANCE}

{: This test checks that non-local goto-statements are allowed. }
{V3.0: Write for PASS shortened. }

program t6p8p2p4d1(output);
label 1;
var
   b:boolean;
procedure q;
begin
   b:=true;
   goto 1
end;   {of q}

begin   {main}
   q;
   b:=false;
1: if b then
      writeln(' PASS...6.8.2.4-1')
   else
      writeln(' FAIL...6.8.2.4-1')
end.
