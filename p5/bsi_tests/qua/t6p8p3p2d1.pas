{TEST 6.8.3.2-1, CLASS=QUALITY}

{: This program checks that deeply nested compound statements
   are permitted. }
{V3.0: New test. }

program t6p8p3p2d1(output);
var sum: integer;
begin
   sum := 0;
     begin
     sum := sum + 1;
       begin
       sum := sum + 1;
         begin
         sum := sum + 1;
           begin
           sum := sum + 1;
             begin
             sum := sum + 1;
               begin
               sum := sum + 1;
                 begin
                 sum := sum + 1;
                   begin
                   sum := sum + 1;
                     begin
                     sum := sum + 1;
                       begin
                       sum := sum + 1;
                         begin
                         sum := sum + 1;
                           begin
                           sum := sum + 1;
                             begin
                             sum := sum + 1;
                               begin
                               sum := sum + 1;
                                 begin
                                 sum := sum + 1;
                                   begin
                                   sum := sum + 1;
                                     begin
                                     sum := sum + 1;
                                       begin
                                       sum := sum + 1;
                                         begin
                                         sum := sum + 1;
                                           begin
                                           sum := sum + 1;
                                             begin
                                             sum := sum + 1;
                                               begin
                                               sum := sum + 1;
                                                 begin
                                                 sum := sum + 1;
                                                   begin
                                                   sum := sum + 1
                                                   end
                                                 end
                                               end
                                             end
                                           end
                                         end
                                       end
                                     end
                                   end
                                 end
                               end
                             end
                           end
                         end
                       end
                     end
                   end
                 end
               end
             end
           end
         end
       end
     end;
   if sum <> 24 then
     writeln(' FAIL...6.8.3.2-1')
   else
     writeln(' QUALITY...6.8.3.2-1')
end.
