{TEST 6.8.3.8-3, CLASS=QUALITY}

{: This program checks that while-statements can be nested
   15 deep. }
{V3.0: New test. }

program t6p8p3p8d3(output);
var
   a0, a1, a2, a3,  a4,  a5,  a6,
   a7, a8, a9, a10, a11, a12, a13, a14: integer;
   sum: integer;
begin
   sum := 0;
   a0 := 1;
   while a0 < 3 do
     begin
      sum := sum + 1;
      a1 := 1;
      while a1 < 3 do
        begin
         sum := sum + 1;
         a2 := 1;
         while a2 < 3 do
           begin
            sum := sum + 1;
            a3 := 1;
            while a3 < 3 do
              begin
               sum := sum + 1;
               a4 := 1;
               while a4 < 3 do
                 begin
                  sum := sum + 1;
                  a5 := 1;
                  while a5 < 3 do
                    begin
                     sum := sum + 1;
                     a6 := 1;
                     while a6 < 3 do
                       begin
                        sum := sum + 1;
                        a7 := 1;
                        while a7 < 3 do
                          begin
                           sum := sum + 1;
                           a8 := 1;
                           while a8 < 3 do
                             begin
                              sum := sum + 1;
                              a9 := 1;
                              while a9 < 3 do
                                begin
                                 sum := sum + 1;
                                 a10 := 1;
                                 while a10 < 3 do
                                    begin
                                    sum := sum + 1;
                                    a11 := 1;
                                    while a11 < 3 do
                                       begin
                                       sum := sum + 1;
                                       a12 := 1;
                                       while a12 < 3 do
                                          begin
                                          sum := sum + 1;
                                          a13 := 1;
                                          while a13 < 3 do
                                             begin
                                             sum := sum + 1;
                                             a14 := 1;
                                             while a14 < 3 do
                                                begin
                                                sum := sum - 1;
                                                a14 := a14 + 1
                                                end;
                                             a13 := a13 + 1
                                             end;
                                          a12 := a12 + 1
                                          end;
                                       a11 := a11 + 1
                                       end;
                                    a10 := a10 + 1
                                    end;
                                 a9 := a9 + 1
                                 end;
                              a8 := a8 + 1
                              end;
                           a7 := a7 + 1
                           end;
                        a6 := a6 + 1
                        end;
                     a5 := a5 + 1
                     end;
                  a4 := a4 + 1
                  end;
               a3 := a3 + 1
               end;
            a2 := a2 + 1
            end;
         a1 := a1 + 1
         end;
      a0 := a0 + 1
      end;
   if sum <> -2 then
      writeln(' FAIL...6.8.3.8-3')
   else
      writeln(' QUALITY...6.8.3.8-3')
end.
