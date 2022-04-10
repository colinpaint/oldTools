{TEST 6.6.6.5-9, CLASS=DEVIANCE}

{: This test deviates since eoln should only be allowed
   on textfiles. }
{  The boolean function eoln may only be used with the
   required type text. }
{V3.1: New test. }

program t6p6p6p5d9(output);
type
   sneak = file of char;
var
   dirty : sneak; { Not a textfile }
   b     : boolean;
begin
   rewrite(dirty);
   write(dirty,' '); write(dirty,' ');
   reset(dirty);
   b:=eoln(dirty); { Not allowed }
   writeln(' DEVIATES...6.6.6.5-9')
end.
