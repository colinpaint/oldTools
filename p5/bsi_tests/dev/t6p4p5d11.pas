{TEST 6.4.5-11, CLASS=DEVIANCE}

{: This test violates the compatibility requirements. }
{  Some implementations may have an implicit ordering
   between different types, and allow these to be compared etc.,
   thus not conforming to the compatibility rules of the Pascal
   Standard. }
{V3.0: Test and comment revised. Was previously 6.4.5-10. }

program t6p4p5d11(output);
var
   colour : (red,green,blue);
   b : boolean;
begin
   b := red = 0;
   writeln(' DEVIATES...6.4.5-11')
end.
