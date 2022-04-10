{TEST 6.4.6-6, CLASS=DEVIANCE}

{: Structured-types containing a file component should not
   be assigned to each other. }
{  The Pascal Standard states that the two types T1 and T2
   (in determining assignment compatibility) must neither be
   a file-type nor a structured-type with a file component.
   This program tests the deviation of permitting the
   latter case. }
{V3.1: Program parameter removed. }

program t6p4p6d6(output);
type
   rekord = record
               f : text;
               a : integer
            end;
var
   record1 : rekord;
   record2 : rekord;
begin
   record1.a:=1;
   rewrite(record1.f);
   rewrite(record2.f);
   record2:=record1;
   writeln(' DEVIATES...6.4.6-6')
end.
