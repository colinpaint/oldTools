{TEST 6.8.3.5-8, CLASS=DEVIANCE}

{: This test checks that subrange-like lists cannot be used as
   case-constant elements. }
{  Similar to test 6.8.3.5-7, this test checks the subrange
   case extension, which may not be safely implemented. This
   program is utter confused garbage and indicates the kinds of
   checks needed. }
{V3.0: Output provided to allow users of deviating compilers to
   identify the nature of the deviance. Was previously 6.8.3.5-13. }

program t6p8p3p5d8(output);
var
   thing:1..7;
begin
   writeln(' CASE-INDEX  CASE-CONSTANT');
   for thing:=1 to 7 do
      case thing of
         1..5: writeln(thing:6,'           1..5');
         4..7: writeln(thing:6,'           4..7');
         2   : writeln(thing:6,'           2')
      end;
   writeln(' DEVIATES...6.8.3.5-8')
end.
