{TEST 6.10-3, CLASS=CONFORMANCE}

{: The identifier after 'program' has no significance within
   a program. Hence this program should be acceptable. }
{V3.0: New test derived from a processor bug. }

program t6p10d3(output);
var
   t6p10d3: integer;
begin
   t6p10d3 := 1;
   writeln(' PASS...6.10-3')
end.
