{TEST 6.9.3.5.1-1, CLASS=CONFORMANCE}

{: This program checks that the floating point representation
   of real numbers is correctly written to textfiles. }
{V3.1: Rewritten to avoid dependence upon number of digits in
   exponent. }

program t6p9p3p5p1d1(output);
var
   f: text;
   i: 6 .. 20;
   fail: boolean;
   n: integer;
begin
   rewrite(f);
   for i := 6 to 20 do
      writeln(f, 0.0:i, 1.0:i);
   reset(f);
   fail := false;
   for i := 6 to 20 do
      begin
      if f^ <> ' ' then
         fail := true;
      read(f, n);
      if (n <> 0) and (f^ <> '.') then
         fail := true;
      get(f);
      read(f, n);
      if (n <> 0) or ((f^ <> 'E') and (f^ <> 'e')) then
         fail := true;
      get(f);
      if (f^ <> '+') and (f^ <> '-') then
         fail := true;
      read(f, n);
      if (n <> 0) or (f^ <> ' ') then
         fail := true;
      read(f, n);
      if (n <> 1) and (f^ <> '.') then
         fail := true;
      get(f);
      read(f, n);
      if (n <> 0) or ((f^ <> 'E') and (f^ <> 'e')) then
         fail := true;
      get(f);
      if (f^ <> '+') and (f^ <> '-') then
         fail := true;
      read(f, n);
      if (n <> 0) or not eoln(f) then
         fail := true;
      end;
   if fail then
      writeln(' FAIL...6.9.3.5.1-1')
   else
      writeln(' PASS...6.9.3.5.1-1')
end.
