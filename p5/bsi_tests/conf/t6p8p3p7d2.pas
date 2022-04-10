{TEST 6.8.3.7-2, CLASS=CONFORMANCE}

{: This test checks that a repeat-statement containing no statements
   is executed until the expression is true. }
{V3.0: Writes revised. }

program t6p8p3p7d2(output);
var
  a:integer;

function bool : boolean;
begin
   a:=a+1;
   bool := a>=5
end;

begin
   a:=0;
   repeat
   until bool;
   if (a=5) then
      writeln(' PASS...6.8.3.7-2')
   else
      writeln(' FAIL...6.8.3.7-2')
end.
