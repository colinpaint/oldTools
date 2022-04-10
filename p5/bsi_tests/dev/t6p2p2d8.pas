{TEST 6.2.2-8, CLASS=DEVIANCE}

{: The Pascal Standard requires that the defining-point of an
   identifier shall precede all applied occurrences of that
   identifier, with the exception of pointer-type declarations. }
{  The scope of an identifier is its whole region, which in most
   cases is a block. The rules prohibit a reference to
   an outer identifier of the same spelling preceding the
   defining-point.  The test includes two exactally similar
   violations of the rules in the use of the identifiers red and
   violet in the declarations of m and n. }
{V3.1: Comment changed. }

program t6p2p2d8(output);
const
   red = 1;
   violet = 2;
procedure ouch;
const
   m = red;
   n = violet;
type
   a = array[m..n] of integer;
var
   v : a;
   colour : (yellow,green,blue,red,indigo,violet);
begin
   v[1]:=1;
   colour:=red
end;
begin
   ouch;
   writeln(' DEVIATES...6.2.2-8')
end.
