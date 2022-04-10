{TEST 6.4.2.3-5, CLASS=DEVIANCE}

{: This program illustrates that two textually identical
   enumeration-types in nested scopes should introduce distinct
   types. }
{  Hence the assignment in 'p' is invalid. }
{V3.0: New test. }

program t6p4p2p3d5(output);
var a: (male, female);

procedure p;
   var b: (male, female);
   begin
   b := female;
   a := b
   end;

begin
   a := male;
   p;
   writeln(' THE ORDINAL VALUE OF A IS ', ord(a));
   writeln(' DEVIATES...6.4.2.3-5')
end.
