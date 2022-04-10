{TEST 6.4.6-12, CLASS=ERRORHANDLING, NUMBER=50}

{: This test violates the assignment-compatibility rules for
   set-types. }
{  Similarly for 6.4.6-9, if two types are compatible set types,
   and any of the members of the set expression E (of type T2)
   is not in the closed interval specified by the base-type of the
   type T1, an error occurs. }
{V3.0: Comment and writing revised. Was previously 6.4.6-7. }

program t6p4p6d12(output);
type
   colour = (red,pink,orange,yellow,green,blue);
   subone = red..orange;
   subtwo = pink..yellow;
var
   setone : set of subone;
   settwo : set of subtwo;
begin
   settwo:=[pink,yellow];
   setone:=settwo;                     { should be an error }
   writeln(' ERROR...6.4.6-12');
   writeln(' ERROR NOT DETECTED')
end.
