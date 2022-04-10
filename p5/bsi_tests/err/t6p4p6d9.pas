{TEST 6.4.6-9, CLASS=ERRORHANDLING, NUMBER=49}

{: This test violates the assignment-compatibility rules for
   ordinal-types. }
{  The Pascal Standard says that if the two types in an assignment
   compatibility test (T1 and T2) are compatible ordinal types
   and the value of the expression E which is of type T2 is not in
   the closed interval specified by the type T1, an error occurs. }
{V3.0: Comment and writing revised. Was previously 6.4.6-4. }

program t6p4p6d9(output);
type
   subrange = 0..5;
var
   i : subrange;
begin
   i:=5;
   i:=i*2;    { error }
   writeln(' THE VALUE OF I IS ', i);
   writeln(' ERROR...6.4.6-9');
   writeln(' ERROR NOT DETECTED')
end.
