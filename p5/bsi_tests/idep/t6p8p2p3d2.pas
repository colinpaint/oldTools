{TEST 6.8.2.3-2, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 7}

{: This program determines the order of evaluation of the actual
   parameters in a procedure statement. }
{V3.1: Reclassified from IMPLEMENTATIONDEFINED. }

program t6p8p2p3d2(output);
var
   string : packed array[1..3] of char;
   i      : integer;
function sideeffect(c : char) : integer;
begin
   string[i] := c;
   i := i + 1;
   sideeffect := i
end;
procedure order(p,q,r : integer);
begin
   if string = 'ABC' then
      writeln(' ACTUAL PARAMETERS EVALUATED IN FORWARD ORDER')
   else
      if string = 'CBA' then
         writeln(' ACTUAL PARAMETERS EVALUATED IN REVERSE ORDER')
      else
         writeln(' ORDER OF ACTUAL PARAMETER EVALUATION UNKNOWN')
end;
begin
   writeln(' OUTPUT FROM TEST...6.8.2.3-2');
   i := 1;
   order(sideeffect('A'),sideeffect('B'),sideeffect('C'));
   writeln(' IMPLEMENTATION DEPENDENT...6.8.2.3-2')
end.
