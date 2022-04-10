{TEST 6.7.1-3, CLASS=QUALITY}

{: This program checks that deeply nested expressions are
   permitted. }
{V3.0: New test. }

program t6p7p1d3(output);
const
   c0 = 1; c1 = 1; c2 = 1; c3 = 1; c4 = 1; c5 = 1; c6 = 1; c7 = 1;
   c8 = 1; c9 = 1; c10 = 1; c11 = 1; c12 = 1; c13 = 1; c14 = 1;
var
   v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14,
   sum: integer;
begin
   sum := c0 + (c1 + (c2 + (c3 + (c4 + (c5 + (c6 + (c7 +
         (c8 + (c9 + (c10 + (c11 + (c12 + (c13 + (c14))))))))))))));
   v0 := 1; v1 := 1; v2 := 1; v3 := 1; v4 := 1; v5 := 1; v6 := 1;
   v7 := 1; v8 := 1; v9 := 1; v10 := 1; v11 := 1; v12 := 1; v13 := 1;
   v14 := 1;
   sum := sum + v0 + (v1 + (v2 + (v3 + (v4 + (v5 + (v6 + (v7 +
         (v8 + (v9 + (v10 + (v11 + (v12 + (v13 + (v14))))))))))))));
   if sum <> 30 then
      writeln(' FAIL...6.7.1-3')
   else
      writeln(' QUALITY...6.7.1-3')
end.
