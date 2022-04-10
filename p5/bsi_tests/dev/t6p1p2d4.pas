{TEST 6.1.2-4, CLASS=DEVIANCE}

{: This test checks that nil is implemented as a word-symbol,
   and not as an identifier. }
{  This is a common Pascal-P error. }
{V3.0: Comment rewritten. Was previously 6.1.2-1. }

program t6p1p2d4(output);
var
   i:(tick,cross,nil);
begin
   i:=nil;
   writeln(' DEVIATES...6.1.2-4')
end.
