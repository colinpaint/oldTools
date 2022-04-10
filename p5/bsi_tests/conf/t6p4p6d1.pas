{TEST 6.4.6-1, CLASS=CONFORMANCE}

{: This program tests that assignment compatible types as
   described by the Pascal Standard, are permitted by this
   processor. }
{  This program tests only those uses in assignment statements.
   All cases have been tested elsewhere, but are included here
   together for consistency. }
{V3.0: Comment revised. }

program t6p4p6d1(output);
type
   colour = (red,pink,yellow);
   rekord = record
               a : integer;
               b : boolean
            end;
var
   i     : integer;
   j     : real;
   col1  : colour;
   col2  : pink..yellow;
   col3  : set of colour;
   col4  : set of red..pink;
   urray1   : array[1..6] of integer;
   urray2   : array[1..4] of integer;
   record1  : rekord;
   record2  : rekord;
begin
   i:=2;
   j:=i;
   col1:=yellow;
   col2:=col1;
   col3:=[pink];
   col4:=col3;
   urray2[1]:=0;
   urray1[6]:=urray2[1];
   record1.a:=2;
   record1.b:=true;
   record2:=record1;
   writeln(' PASS...6.4.6-1')
end.
