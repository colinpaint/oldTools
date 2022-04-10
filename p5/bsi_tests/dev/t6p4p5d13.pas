{TEST 6.4.5-13, CLASS=DEVIANCE}

{: This test checks that structurally identical array-types which are
   even textually identical in their declarations are not considered
   identical. }
{  The test is similar to 6.4.5-8, but is repeated to ensure that
   idiosyncratic behaviour for arrays of char does not mask effects
   for arrays of other component types. }
{V3.1: Comment changed. }

program t6p4p5d13(output);

type
   index = 1..10;
   urrayone = array[index] of boolean;
   urraytwo = array[index] of boolean;
var
   arraytwo : urraytwo;

procedure test(var urray : urrayone);
begin
   writeln(' DEVIATES...6.4.5-13')
end;

begin
   { The two types urrayone and urraytwo are not identical,
     and thus the call to test should not be acceptable. }
   test(arraytwo)
end.
