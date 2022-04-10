{TEST 6.6.1-3, CLASS=DEVIANCE}

{: This program checks that a procedure call is not incorrectly
   bound to the wrong defining occurrence. }
{  Since applied occurrence is before the defining occurrence
   (in qq), the program deviates.  Simple processors are likely
   to fail it. }
{V3.0: New test. }

program t6p6p1d3(output);
procedure p;
     begin
     writeln(' OUTER PROCEDURE')
     end;
procedure q;
     procedure qq;
          begin
          p
          end;
     procedure p;
          begin
          writeln(' INNER PROCEDURE')
          end;
     begin
     qq
     end;
begin
q;
writeln(' DEVIATES...6.6.1-3')
end.
