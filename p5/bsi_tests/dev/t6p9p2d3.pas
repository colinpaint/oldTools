{TEST 6.9.2-3, CLASS=DEVIANCE}

{: The procedure readln should only be allowed on textfiles.  }
{V3.1: New test. }

program t6p9p2d3(output);
type
   sneak = file of char;
var
   dirty : sneak; { Not a textfile }
begin
   rewrite(dirty);
   write(dirty,'2'); write(dirty,' ');
   reset(dirty);
   readln(dirty); { Not allowed }
   writeln(' DEVIATES...6.9.2-3')
end.
