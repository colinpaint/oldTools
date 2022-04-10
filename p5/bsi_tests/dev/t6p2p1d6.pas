{TEST 6.2.1-6, CLASS=DEVIANCE}

{: This test contains a label which has been declared but not
   sited. }
{  The label-declaration-part shall specify all labels that
   prefix a statement in the corresponding statement-part.
   This program specifies a label which does not prefix such
   a statement, which is not allowed. }
{V3.0: Comment redrafted and write extended.
   Was previously 6.2.1-5. }

program t6p2p1d6(output);
label
   9;
begin
   writeln(' DEVIATES...6.2.1-6')
end.
