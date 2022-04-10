{TEST 6.4.5-7, CLASS=DEVIANCE}

{: This program simply tests that the processor does not deviate
   from the Standard in the case of subranges of the same host
   being treated as identical. }
{V3.0: Comment and write revised. Was previously 6.4.5-2. }

program t6p4p5d7(output);
type
   colour = (red,pink,orange,yellow,green,blue);
   subone = red..yellow;
   subtwo = pink..blue;
var
   colour1 : subone;
   colour2 : subtwo;

procedure test(var col1 : subone);
begin
   writeln(' DEVIATES...6.4.5-7')
end;

begin
   { Although colour1 and colour2 are compatible (i.e. subone and
     subtwo are compatible), they are not identical, and the call
     to 'test' should not be acceptable. }
   colour2:=pink;
   test(colour2)
end.
