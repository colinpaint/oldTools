{TEST 6.8.3.4-2, CLASS=QUALITY}

{: This program checks that deeply nested if-statements are
   permitted. }
{V3.0: New test. }

program t6p8p3p4d2(output);
var
   i, j, sum: integer;
begin
   i := 1;
   j := 2;
   sum := 0;
   if i > j then
     begin
     end
   else
     begin
     sum := sum + 1;
     if i > j then
       begin
       end
     else
       begin
       sum := sum + 1;
       if i > j then
         begin
         end
       else
         begin
         sum := sum + 1;
         if i > j then
           begin
           end
         else
           begin
           sum := sum + 1;
           if i > j then
             begin
             end
           else
             begin
             sum := sum + 1;
             if i > j then
               begin
               end
             else
               begin
               sum := sum + 1;
               if i > j then
                 begin
                 end
               else
                 begin
                 sum := sum + 1;
                 if i > j then
                   begin
                   end
                 else
                   begin
                   sum := sum + 1;
                   if i > j then
                     begin
                     end
                   else
                     begin
                     sum := sum + 1;
                     if i > j then
                       begin
                       end
                     else
                       begin
                       sum := sum + 1;
                       if i > j then
                         begin
                         end
                       else
                         begin
                         sum := sum + 1;
                         if i > j then
                           begin
                           end
                         else
                           begin
                           sum := sum + 1;
                           if i > j then
                             begin
                             end
                           else
                             begin
                             sum := sum + 1;
                             if i > j then
                               begin
                               end
                             else
                               begin
                               sum := sum + 1;
                               if i > j then
                                 begin
                                 end
                               else
                                 begin
                                 sum := sum + 1;
                                 if i > j then
                                   begin
                                   end
                                 else
                                   begin
                                   sum := sum + 1;
                                   if i > j then
                                     begin
                                     end
                                   else
                                     begin
                                     sum := sum + 1;
                                     if i > j then
                                       begin
                                       end
                                     else
                                       begin
                                       sum := sum + 1;
                                       if i > j then
                                         begin
                                         end
                                       else
                                         begin
                                         sum := sum + 1;
                                         if i > j then
                                           begin
                                           end
                                         else
                                           begin
                                           sum := sum + 1;
                                           if i > j then
                                             begin
                                             end
                                           else
                                             begin
                                             sum := sum + 1;
                                             if i > j then
                                               begin
                                               end
                                             else
                                               begin
                                               sum := sum + 1;
                                               if i > j then
                                                 begin
                                                 end
                                               else
                                                 begin
                                                 sum := sum + 1;
                                                 if i > j then
                                                   begin
                                                   end
                                                 else
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
     writeln(' FAIL...6.8.3.4-2')
   else
     writeln(' QUALITY...6.8.3.4-2')
end.
