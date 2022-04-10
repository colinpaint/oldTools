{TEST 6.4.2.2-10, CLASS=IMPLEMENTATIONDEFINED, NUMBER= 6}

{: This program prints out the implementation defined value
   of maxint. }
{V3.0: Was previously 6.4.2.2-7. }

program t6p4p2p2d10(output);
begin
   writeln(' OUTPUT FROM TEST...6.4.2.2-10');
   writeln(' THE VALUE OF MAXINT IS ', maxint);
   writeln(' IMPLEMENTATION DEFINED...6.4.2.2-10')
end.
