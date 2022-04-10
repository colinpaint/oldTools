{$s}
{TEST 6.3-9, CLASS=DEVIANCE}

{: This test deviates since expressions cannot appear in a
   constant-definition. }
{  The const-part contains definitions of identifiers in terms
   of simple constants.  Standard Pascal does not permit
   expressions to be used, even if their values are compile-time
   determinable.  This program attempts a simple expression so
   that any deviance can be detected. }
{V3.0: New test to detect expressions in const parts. }

program t6p3d9(output);
const
   linelength=80;
   lineoflo=linelength+1;
var
   i:1..lineoflo;
   l:array[1..linelength] of char;
begin
   i:=1;
   while i<=linelength do begin
      l[i]:='-'; i:=succ(i)
   end;
   writeln(' DEVIATES...6.3-9')
end.
