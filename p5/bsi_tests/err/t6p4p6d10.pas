{TEST 6.4.6-10, CLASS=ERRORHANDLING, NUMBER= 7}

{: This program violates parameter assignment-compatibility
   rules. }
{  Similar to 6.4.6-9. }
{V3.0: Comment and writing revised. Was previously 6.4.6-5. }

program t6p4p6d10(output);
type
   subrange = 0..5;
var
   i : subrange;

procedure test(a : subrange);
begin
   writeln(' THE VALUE OF A IS ', a);
   a:=5
end;

begin
   i:=5;
   test(i*2);      { error }
   writeln(' ERROR...6.4.6-10');
   writeln(' ERROR NOT DETECTED')
end.
