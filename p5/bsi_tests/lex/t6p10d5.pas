{TEST 6.10-5, CLASS=CONFORMANCE}

{: This test checks that a comment is permitted between the
   final end and the '.'. }
{V3.1: New test. }

program t6p10d5(output);
begin
   writeln(' PASS...6.10-5')
end{comment here, next test without comments}.

program t6p10d6(output);
begin
   writeln(' PASS...6.10-6' )
end.
