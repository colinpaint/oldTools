{TEST 6.4.2.4-4, CLASS=DEVIANCE}

{: This test deviates since the lower-bound of a subrange-type
   should be less than or equal to the upper-bound. }
{V3.0: Comment and writing revised. Was previously 6.4.2.4-3. }

program t6p4p2p4d4(output);
type
   mixedup = 100..0;
   reverse = 'Z'..'A';
begin
   writeln(' DEVIATES...6.4.2.4-4')
end.
