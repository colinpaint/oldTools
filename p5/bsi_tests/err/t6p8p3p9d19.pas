{TEST 6.8.3.9-19, CLASS=ERRORHANDLING, NUMBER=43}

{: This test uses an undefined for-statement control-variable. }
{  This test checks that the undefined state of a for-statement
   control-variable when the loop is left has one or both of
   the following properties:
   (a) Range checks are not omitted on these variables in the
   supposition that its value is permissible, or
   (b) The value of the variable is in range of its type (in
   this specific implementation). }
{V3.1: Comment changed. }

program t6p8p3p9d19(output);
type
   t=(red,green,blue,pink);
var
   i,j,k:t;
   m:integer;
begin
   { i is a finite scalar. }
   i:=green;
   j:=red;
   k:=pink;
   m:=0;
   for i:=j to k do
      m:=m+1;
   writeln(' THE UNDEFINED ORDINAL VALUE OF I IS ',ord(i));
   writeln(' ERROR NOT DETECTED');
   write(' ITS SYMBOLIC VALUE IS ');

   { A possible omission of the range check on the case-statement
     may be disastrous if a wild jump occurs. }

   case i of
   red: writeln(' RED');
   green: writeln(' GREEN');
   blue: writeln(' BLUE');
   pink: writeln(' PINK')
   end;
   writeln;  { Just in case the range isn't checked. }
   writeln(' ERROR...6.8.3.9-19');
   writeln(' ERROR NOT DETECTED')
end.
