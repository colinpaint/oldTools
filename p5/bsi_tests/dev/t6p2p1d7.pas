{TEST 6.2.1-7, CLASS=DEVIANCE}

{: This test deviates since labels specified in a
   label-declaration-part must prefix statements within the
   corresponding statement-part. }
{  This program has the label attached to a statement within
   a declared procedure of the corresponding block, and is
   therefore incorrect. }
{V3.0: New test. }

program t6p2p1d7(output);
label 732;

procedure grimly(p:integer);
begin
732:
   p := p-1;
   if p > 0 then goto 732
end;

begin
   grimly(43);
   writeln(' DEVIATES...6.2.1-7')
end.
