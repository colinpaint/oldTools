{TEST 6.1.9-2, CLASS=CONFORMANCE}

{: This test includes a valid comment which may confuse a
   processor with the ( * ) sequence. }
{  Processors are not allowed to ignore one form of comment
   delimiter unless they do not have the appropriate characters
   in their set. }
{V3.0: New test derived from DP7185. }

program t6p1p9d2(output);
var
   b:boolean;
begin
   b := false;
   (*)
   b := true;
   (* The above 'statement' is commentary. *)
   if b then
      writeln(' FAIL...6.1.9-2')
   else
      writeln(' PASS...6.1.9-2')
end.
