{TEST 6.8.3.5-7, CLASS=DEVIANCE}

{: This test checks that subrange-like lists cannot be used as
   case-constant elements. }
{V3.0: Was previously 6.8.3.5-12. }

program t6p8p3p5d7(output);
var
   thing:(a,b,c,d,e,f);
begin
   thing:=a;
   while thing<>f do begin
      case thing of
      a..d: thing := succ(thing);
      e:    thing:=f
      end
   end;
   writeln(' DEVIATES...6.8.3.5-7')
end.
