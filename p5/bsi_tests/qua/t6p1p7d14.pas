{TEST 6.1.7-14, CLASS=QUALITY}

{: This program checks that processors allow a reasonably large
   (20) number of constant strings in a program. }
{V3.0: New test. }

program t6p1p7d14(output);
const
   s1 = 'STRING 01: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s2 = 'STRING 02: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s3 = 'STRING 03: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s4 = 'STRING 04: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s5 = 'STRING 05: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s6 = 'STRING 06: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s7 = 'STRING 07: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s8 = 'STRING 08: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s9 = 'STRING 09: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s10= 'STRING 10: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s11= 'STRING 11: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s12= 'STRING 12: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s13= 'STRING 13: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s14= 'STRING 14: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s15= 'STRING 15: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s16= 'STRING 16: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s17= 'STRING 17: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s18= 'STRING 18: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s19= 'STRING 19: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   s20= 'STRING 20: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
if (s1 = s2) or (s3 = s4) or (s5 = s6)
   or (s7 = s8) or (s9 = s10)
   or (s11 = s12) or (s13 = s14) or (s15 = s16)
   or (s17 = s18) or (s19 = s20) then
   writeln(' FAIL...6.1.7-14')
else
   writeln(' QUALITY...6.1.7-14')
end.
