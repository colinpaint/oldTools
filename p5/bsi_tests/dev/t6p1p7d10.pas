{TEST 6.1.7-10, CLASS=DEVIANCE}

{: This test deviates since compatible strings must have the same
   number of components. }
{  The Pascal Standard states that string types are compatible
   if they have the same number of components.
   Some processors may allow assignment of one string type to
   another, padding out with spaces or truncating characters if
   they are not of the same lengths.
   All the cases below should be detected. }
{V3.0: Spaces inserted in writes, and comment revised.
   Moved DEVIATES to end of program. }

program t6p1p7d10(output);
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..6] of char;
begin
   string1:='AB';       { 1-pad with spaces }
   writeln(' CASE 1 : ', string1);
   string1:='ABCD';
   string2:=string1;    { 2-what happens here }
   writeln(' CASE 2 : ', string2);
   string1:='ABCDEFG';  { 3-what happens here }
   writeln(' CASE 3 : ', string1);
   writeln(' DEVIATES...6.1.7-10')
end.
