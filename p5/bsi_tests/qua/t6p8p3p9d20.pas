{TEST 6.8.3.9-20, CLASS=QUALITY}

{: This program checks that for-statements can be nested
   15 deep. }
{V3.0: Value check added.
   Extended nesting depth from 12 to 15. }

program t6p8p3p9d20(output);
var a0, a1, a2, a3, a4, a5, a6,
   a7, a8, a9, a10, a11, a12, a13, a14: integer;
   sum: integer;
begin
   sum := 0;
   for a0 := 1 to 2 do
      begin
      sum := sum + 1;
      for a1 := 1 to 2 do
         begin
         sum := sum + 1;
         for a2 := 1 to 2 do
            begin
            sum := sum + 1;
            for a3 := 1 to 2 do
               begin
               sum := sum + 1;
               for a4 := 1 to 2 do
                  begin
                  sum := sum + 1;
                  for a5 := 1 to 2 do
                     begin
                     sum := sum + 1;
                     for a6 := 1 to 2 do
                        begin
                        sum := sum + 1;
                        for a7 := 1 to 2 do
                           begin
                           sum := sum + 1;
                           for a8 := 1 to 2 do
                              begin
                              sum := sum + 1;
                              for a9 := 1 to 2 do
                                 begin
                                 sum := sum + 1;
                                 for a10 := 1 to 2 do
                                    begin
                                    sum := sum + 1;
                                    for a11 := 1 to 2 do
                                       begin
                                       sum := sum + 1;
                                       for a12 := 1 to 2 do
                                          begin
                                          sum := sum + 1;
                                          for a13 := 1 to 2 do
                                             begin
                                             sum := sum + 1;
                                             for a14 := 1 to 2 do
                                                begin
                                                sum := sum - 1
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
   if sum <> -2 then
      writeln(' FAIL...6.8.3.9-20')
   else
      writeln(' QUALITY...6.8.3.9-20')
end.
