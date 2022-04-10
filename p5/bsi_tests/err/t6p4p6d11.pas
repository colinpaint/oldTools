{TEST 6.4.6-11, CLASS=ERRORHANDLING, NUMBER= 1}

{: This program violates array subscript assignment-compatibility
   rules. }
{  Similar to 6.4.6-9. }
{V3.0: Comment and writing revised. Was previously 6.4.6-6. }

program t6p4p6d11(output);
type
   colour = (red,pink,orange,yellow,green);
var
   v     : colour;
   urray : array[red..orange] of boolean;
begin
   v:=orange;
   urray[succ(v)]:=true;      { error }
   writeln(' THE ORDINAL VALUE OF V IS ', ord(v));
   writeln(' ERROR...6.4.6-11');
   writeln(' ERROR NOT DETECTED')
end.
