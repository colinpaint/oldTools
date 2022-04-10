{TEST 6.4.6-13, CLASS=ERRORHANDLING, NUMBER= 8}

{: This test violates the assignment-compatibility rules for sets
   passed as parameters. }
{V3.0: Writing revised. Was previously 6.4.6-8. }

program t6p4p6d13(output);
type
   colour   = (red,pink,orange,yellow,green,blue);
   subone   = red..green;
   settwo   = set of yellow..blue;
var
   setone : set of subone;

procedure test(a : settwo);
begin
   writeln(' ERROR...6.4.6-13');
   writeln(' ERROR NOT DETECTED')
end;

begin
   setone:=[red,pink,orange];
   test(setone)  { error }
end.
