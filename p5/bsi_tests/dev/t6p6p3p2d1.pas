{TEST 6.6.3.2-1, CLASS=DEVIANCE}

{: The assignment compatibility rules prohibit a type with a
   file component being used as a value parameter. }
{V3.1: Program parameter removed and reset changed to rewrite. }

program t6p6p3p2d1(output);

type
   f = record
       x: integer;
       y: text
       end;
var
   v: f;
procedure p( q: f);
   begin
   rewrite( q.y )
   end;
begin
   v.x := 1;
   p(v);
   writeln(' DEVIATES...6.6.3.2-1')
end.
