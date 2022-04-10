{TEST 6.2.1-5, CLASS=DEVIANCE}

{: This test deviates since labels may not be given two sites
   in the statement-part. }
{  Since the label is not used in a goto, this program
   is a stringent test. }
{V3.0: Write extended. Was previously 6.2.1-4. }

program t6p2p1d5(output);
label
   9;
begin
   9: write(' DEVIATES...6.2.1-5,');
      if true <> false then
         9: writeln(' MULTIPLY-SITED LABEL')
end.
