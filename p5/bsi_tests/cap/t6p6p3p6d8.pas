{TEST 6.6.3.6-8, CLASS=LEVEL1, SUBCLASS=DEVIANCE }

{: This program checks that the component types of congruent
   conformant array parameters must be conformable. }
{V3.1: New test. }

program t6p6p3p6d8(output);
type
   one = 1 .. 10;
   two = 1 .. 10;
   letter = 'a' .. 'z';
var
   a: array [two] of array [one] of char;
   i: one;
   j: two;
function sum( var a: array[l..u: two] of
                     array[ll..uu: one] of letter): integer;
   var
      s: integer;
      i: one;
      j: two;
   begin
   s := 0;
   for i := 1 to 10 do
   for j := 1 to 10 do
      s := s + ord(a[j,i]);
   sum := s
   end;

procedure p( function f(var aa: array[l..u: two] of
                     array[la..lu: one] of char
                       ):integer);
   var
      s: integer;
   begin
   s := f(a)
   end;
begin
for i := 1 to 10 do
for j := 1 to 10 do
   a[j,i] := 'a';
p(sum);
writeln( ' DEVIATES...6.6.3.6-8' )
end.
