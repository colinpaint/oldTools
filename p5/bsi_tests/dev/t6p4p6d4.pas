{TEST 6.4.6-4, CLASS=DEVIANCE}

{: This test deviates since assignment of reals to integers is
   not permitted. }
{  The Pascal Standard allows assignment of integers to reals,
   but not reals to integers. }
{V3.0: Comment and writing revised. Was previously 6.4.6-9. }

program t6p4p6d4(output);
var
   i : real;
   j : integer;
procedure test(a:integer);
begin
end;

begin
   i:=6.345;
   j:=i;
   test(6.345);
   writeln(' DEVIATES...6.4.6-4')
end.
