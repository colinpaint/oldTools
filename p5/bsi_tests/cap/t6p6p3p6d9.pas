{TEST 6.6.3.6-9, CLASS=LEVEL1, SUBCLASS=DEVIANCE }

{: This program checks that the packing of congruent
   conformant array parameters must be the same. }
{V3.1: New test. }

program t6p6p3p6d9(output);
type
   one = 1 .. 10;
var
   a: array [one] of char;
   i: one;
function sum( var a: packed array[l..u: one] of char): integer;
   var
      s: integer;
      i: one;
   begin
   s := 0;
   for i := 1 to 10 do
      s := s + ord(a[i]);
   sum := s
   end;

procedure p( function f(var aa: array[la..lu: one] of char
                       ):integer);
   var
      s: integer;
   begin
   s := f(a)
   end;
begin
for i := 1 to 10 do
   a[i] := 'a';
p(sum);
writeln( ' DEVIATES...6.6.3.6-9' )
end.
