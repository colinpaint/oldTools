{TEST 6.7.2.3-5, CLASS=DEVIANCE}

{: This test contains an extension of Boolean operators which
   is permitted in Ada but not in Pascal. }
{  The 'and then' and 'or else' constructs in Ada are added to
   provide a mechanism which avoids the complete evaluation of
   a boolean expression. }
{V3.1: New test. }

program t6p7p2p3d5(output);
var
   b: boolean;
begin
   b := (1 > 2) and then (3 = 4);
   b := b or else ('a' = 'b');
   writeln(' DEVIATES...6.7.2.3-5')
end.
