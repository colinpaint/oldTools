{TEST 6.8.3.4-1, CLASS=CONFORMANCE}

{: This test checks a nested if-statement whose syntax is apparently
   ambiguous. }
{V3.0: Comma inserted in header.
   Writes elaborated for FAIL }

program t6p8p3p4d1(output);
const
   off=false;
var
   b:boolean;
begin
   for b:=false to true do
      begin
      if b then
         if off then
            writeln(' FAIL...6.8.3.4-1, IF STATEMENT(1)')
         else
            begin
            if not b then
                writeln(' FAIL...6.8.3.4-1, IF STATEMENT(2)')
            else
               writeln(' PASS...6.8.3.4-1')
            end
      end
end.
