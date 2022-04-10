{TEST 6.4.5-8, CLASS=DEVIANCE}

{: This test checks that structurally identical types are not
   regarded as identical. }
{  This test is similar to 6.4.5-7, except that deviance in the
   case of arrays is tested. }
{V3.0: Comment and write revised.  Unused variable arrayone
   removed and arraytwo initialized. Was previously 6.4.5-3. }

program t6p4p5d8(output);
type
   urrayone = array[1..10] of char;
   urraytwo = array[1..10] of char;
var
   i : 1..10;
   arraytwo : urraytwo;

procedure test(var urray : urrayone);
begin
   writeln(' DEVIATES...6.4.5-8')
end;

begin
   for i:= 1 to 10 do arraytwo[i]:='Z';
   { The two arraytypes, urrayone and urraytwo, are not identical
     and hence the call to 'test' should not be acceptable. }
   test(arraytwo)
end.
