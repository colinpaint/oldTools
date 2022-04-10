{TEST 6.4.2.3-4, CLASS=CONFORMANCE}

{: This program illustrates the difficulties of when a type
   is defined. }
{  Similar to 6.4.2.3-3, but for records rather than arrays. }
{V3.0: New test. }

program t6p4p2p3d4(output);
var
   x: record
      a: (male, female);
      b: male .. female
      end;
begin
   x.a := pred(female);
   x.b := succ(x.a);
   if pred(x.b) <> male then
      writeln(' FAIL...6.4.2.3-4')
   else
      writeln(' PASS...6.4.2.3-4')
end.
