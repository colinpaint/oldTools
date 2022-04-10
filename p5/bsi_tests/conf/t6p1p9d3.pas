{TEST 6.1.9-3, CLASS=CONFORMANCE}

{: This test includes a variety of curious comments which
   exercise the lexical analyser of a Pascal processor. }
{  All are correct Pascal, and the program should be acceptable
   to a Pascal processor. Processors are not allowed
   to ignore one form of comment delimiter unless they
   do not have the appropriate characters in their set. }
{V3.0: New test derived from DP7185. }

program t6p1p9d3(output);
var
   i:0..10;
begin
   i:=0;    (* *)
   i:=i+1;  (* **)
   i:=i+1;  (* ***)
   i:=i+1;  (* ****)
   i:=i+1;  (* (*)
   i:=i+1;  {}
   i:=i+1;  {******}
   i:=i+1;  (**)
   i:=i+1;  { {{ (* (*** }
   i:=i+1;  (* (*(* { ** ) *)
   i:=i+1;
   if (((i=10))) then
      writeln(' PASS...6.1.9-3')
   else
      writeln(' FAIL...6.1.9-3')
end.
