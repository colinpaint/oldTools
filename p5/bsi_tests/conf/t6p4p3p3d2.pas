{TEST 6.4.3.3-2, CLASS=CONFORMANCE}

{: This test checks that a field-identifier can be redefined. }
{  The Pascal Standard states that the occurrence of a field
   identifier within the identifier list of a record section is
   its defining point as a field identifier for the record
   type in which the record section occurs.
   This should allow redefinition of a field identifier in another
   type declaration. }
{V3.0: Comment revised, and test code added. }

program t6p4p3p3d2(output);
type
   a     = record
            realpart : real;
            imagpart : real
           end;
   realpart = (notimaginary,withbody,withsubstance);
var
   var1 : a;
   var2 : realpart;
begin
   with var1 do
      realpart := 1.0;
   var2 := withbody;
   if (var1.realpart = 1.0) and (var2 = withbody) then
      writeln(' PASS...6.4.3.3-2')
   else
      writeln(' FAIL...6.4.3.3-2')
end.
