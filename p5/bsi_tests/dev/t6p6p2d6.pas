{TEST 6.6.2-6, CLASS=DEVIANCE}

{: A function-identifier can appear in three distinct 'use' contexts:
   function call, assignment of function result and as a
   function parameter. This program illustrates the difficulty
   of distinguishing the three contexts. }
{V3.0: New test. }

program t6p6p2d6(output);
var i: integer;
function f: integer;
   begin
   f := i
   end;
procedure p( x: integer; var y: integer; function z: integer);
   begin
   y := 5;
   writeln(' VALUES OF X, Y AND Z ARE ',x,y,z)
   end;
begin
   i := 10;
   p( f, f, f);
   writeln(' VALUE OF F IS ',f);
   writeln(' DEVIATES...6.6.2-6')
end.
