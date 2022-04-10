{TEST 6.1.2-8, CLASS=DEVIANCE}

{: This test deviates by regarding the .. token as equivalent
   to the colon token. }
{  Some processors with a small limit on set size (such as 48 elements)
   economize on tokens by regarding the .. token as synonymous with
   the : token.  This allows some incorrect programs to run.
   This bug has proliferated from Pascal-P. }
{V3.1: Comment changed. }

program t6p1p2d8(output);
var
   i .. integer;
   j: 1 : 2;
begin
   j := 1;
   i := j+5;
   writeln(' DEVIATES...6.1.2-8')
end.
