{TEST 6.8.3.7-4, CLASS=QUALITY}

{: This program checks that repeat-statements can be nested
   15 deep. }
{V3.0: New test. }

program t6p8p3p7d4(output);
var a0, a1, a2, a3, a4, a5, a6,
   a7, a8, a9, a10, a11, a12, a13, a14: integer;
   sum: integer;
begin
   sum := 0;
   a0 := 1;
      repeat
      sum := sum + 1;
      a1 := 1;
         repeat
         sum := sum + 1;
         a2 := 1;
            repeat
            sum := sum + 1;
            a3 := 1;
               repeat
               sum := sum + 1;
               a4 := 1;
                  repeat
                  sum := sum + 1;
                  a5 := 1;
                     repeat
                     sum := sum + 1;
                     a6 := 1;
                        repeat
                        sum := sum + 1;
                        a7 := 1;
                           repeat
                           sum := sum + 1;
                           a8 := 1;
                              repeat
                              sum := sum + 1;
                              a9 := 1;
                                 repeat
                                 sum := sum + 1;
                                 a10 := 1;
                                    repeat
                                    sum := sum + 1;
                                    a11 := 1;
                                       repeat
                                       sum := sum + 1;
                                       a12 := 1;
                                          repeat
                                          sum := sum + 1;
                                          a13 := 1;
                                             repeat
                                             sum := sum + 1;
                                             a14 := 1;
                                                repeat
                                                sum := sum - 1;
                                                a14 := a14 + 1
                                                until a14 = 3;
                                             a13 := a13 + 1
                                             until a13 = 3;
                                          a12 := a12 + 1
                                          until a12 = 3;
                                       a11 := a11 + 1
                                       until a11 = 3;
                                    a10 := a10 + 1
                                    until a10 = 3;
                                 a9 := a9 + 1
                                 until a9 = 3;
                              a8 := a8 + 1
                              until a8 = 3;
                           a7 := a7 + 1
                           until a7 = 3;
                        a6 := a6 + 1
                        until a6 = 3;
                     a5 := a5 + 1
                     until a5 = 3;
                  a4 := a4 + 1
                  until a4 = 3;
               a3 := a3 + 1
               until a3 = 3;
            a2 := a2 + 1
            until a2 = 3;
         a1 := a1 + 1
         until a1 = 3;
      a0 := a0 + 1
      until a0 = 3;
   if sum <> -2 then
      writeln(' FAIL...6.8.3.7-4')
   else
      writeln(' QUALITY...6.8.3.7-4')
end.
