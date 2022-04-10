{TEST 6.1.9-8, CLASS=EXTENSION, SUBCLASS=IMPLEMENTATIONDEFINED}

{: This program checks whether commonly accepted alternate
   symbols can be used for the colon, semicolon and
   assignment (:=) symbols. }
{  All the alternate symbols are  implemented if the program prints
   EQUIVALENT SYMBOLS IMPLEMENTED. However these equivalent
   symbols are not standard Pascal. }
{V3.0: Test renumbered to correspond with DP7185.
   This test was previously part of 6.11-2, but has
   been separated from the rest of that test, which tests
   equivalent symbols that must conform. }

program t6p1p9d8(output);
var
   i % integer .,  (* % possibly represents colon *)
   s % real .,     (* ., possibly represents semicolon *)
begin
   i %= 5 .,       (* %= possibly represents assignment *)
   s .= 1.0 .,     (* and/or maybe .= does *)
   writeln(' EQUIVALENT SYMBOLS IMPLEMENTED');
   writeln(' IMPLEMENTATION DEFINED...6.1.9-8')
end.
