{TEST 6.4.6-5, CLASS=DEVIANCE}

{: Files should not be assigned to each other. }
{  The Pascal Standard states that the two types T1 and T2
   (in determining assignment compatibility) must neither be a
   a file-type nor a structured-type with a file component.
   This program tests the first part of this statement. }
{V3.1: Program parameters removed. }

program t6p4p6d5(output);
var
   file1 : text;
   file2 : text;
begin
   rewrite(file1);
   rewrite(file2);
   writeln(file1,'ABC');
   file2:=file1;
   writeln(' DEVIATES...6.4.6-5')
end.
