{TEST 6.9.1-7, CLASS=QUALITY}

{: This program checks that a list of 30 variable-accesses can
   appear in a read parameter list. }
{V3.1: Program parameter removed. }

program t6p9p1d7(output);
const
   str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123';
var
    c00, c01, c02, c03, c04, c05, c06, c07, c08, c09,
    c10, c11, c12, c13, c14, c15, c16, c17, c18, c19,
    c20, c21, c22, c23, c24, c25, c26, c27, c28, c29
      : char;
   tempfile: text;
begin
   rewrite(tempfile);
   writeln(tempfile, str);
   reset(tempfile);
   read(tempfile,
       c00, c01, c02, c03, c04, c05, c06, c07, c08, c09,
       c10, c11, c12, c13, c14, c15, c16, c17, c18, c19,
       c20, c21, c22, c23, c24, c25, c26, c27, c28, c29);
   if (c00 <> 'A') or (c01 <> 'B') or (c02 <> 'C') or
      (c03 <> 'D') or (c04 <> 'E') or (c05 <> 'F') or
      (c06 <> 'G') or (c07 <> 'H') or (c08 <> 'I') or
      (c09 <> 'J') or (c10 <> 'K') or (c11 <> 'L') or
      (c12 <> 'M') or (c13 <> 'N') or (c14 <> 'O') or
      (c15 <> 'P') or (c16 <> 'Q') or (c17 <> 'R') or
      (c18 <> 'S') or (c19 <> 'T') or (c20 <> 'U') or
      (c21 <> 'V') or (c22 <> 'W') or (c23 <> 'X') or
      (c24 <> 'Y') or (c25 <> 'Z') or (c26 <> '0') or
      (c27 <> '1') or (c28 <> '2') or (c29 <> '3') then
      writeln(' FAIL...6.9.1-7')
   else
      writeln(' QUALITY...6.9.1-7')
end.
