{TEST 6.1.2-3, CLASS=CONFORMANCE}

{: This test checks the implementation of the .. token. }
{  If the lexical analyser of a Pascal processor is entirely
   separate from the syntax analysis, a three-character
   lookahead may be required to recognize the .. token when it
   immediately follows an integer.  (Processors which know that
   only integers are valid in the context may not need to look
   ahead.)  This test checks that the processor recognizes the
   situation correctly - it occurs frequently elsewhere in the
   package also. }
{V3.0: New test derived from 6.1.2-8. }

program t6p1p2d3(output);
type
   t = 8..15;
var
   m : t;
begin
   m := 11;
   writeln(' PASS...6.1.2-3')
end.
