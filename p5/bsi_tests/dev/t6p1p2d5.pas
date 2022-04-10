{TEST 6.1.2-5, CLASS=DEVIANCE}

{: This test checks that word-symbols cannot be redefined by
   attempting to redefine a small selection. }
{  Typically the attempt provokes such anguishing error recovery
   attempts that testing every reserved word has not been done. }
{V3.0: Comment changed and test extended in. Was previously
   6.1.2-2. }

program t6p1p2d5(output);
var
   thing:(to,var,label,of);
begin
   thing:=label;
   writeln(' DEVIATES...6.1.2-5')
end.
