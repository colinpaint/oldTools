{TEST 6.1.7-13, CLASS=DEVIANCE}

{: This program deviates since a string is on more than
   one line. }
{V3.0: New test derived from a processor bug. }

program t6p1p7d13(output);
begin
   writeln(' STRING IS ON MORE THAN ONE
             LINE');
   writeln(' DEVIATES...6.1.7-13')
end.
