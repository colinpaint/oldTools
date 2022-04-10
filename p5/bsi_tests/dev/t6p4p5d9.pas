{TEST 6.4.5-9, CLASS=DEVIANCE}

{: This test checks that structurally identical types are not
   regarded as identical. }
{  This program is similar to 6.4.5-8, except that deviance in the
   case of records is tested. }
{V3.1: Comment changed. }

program t6p4p5d9(output);
type
   recone = record
               a : integer;
               b : boolean
            end;
   rectwo = record
               c : integer;
               d : boolean
            end;
var
   recordtwo : rectwo;

procedure test(var rec : recone);
begin
   writeln(' DEVIATES...6.4.5-9')
end;

begin
   { The two record types are not identical, and hence
     the call to 'test' should fail. }
   recordtwo.c:=0;
   recordtwo.d:=true;
   test(recordtwo)
end.
