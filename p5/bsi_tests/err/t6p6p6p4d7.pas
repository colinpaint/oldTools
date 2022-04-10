{TEST 6.6.6.4-7, CLASS=ERRORHANDLING, NUMBER=37}

{: This test evokes an error by pushing chr past the
   limits of the char-type. It assumes that no char-type has more
   than 1000 + ord('0') values. }
{V3.0: Made upper limit for i < 1024.
   Writes revised. }

program t6p6p6p4d7(output);
var
   i:0..1000;
   c:char;
begin
   for i:=0 to 1000 do
      c:=chr(i+ord('0'));
   writeln(' ERROR...6.6.6.4-7');
   writeln(' ERROR NOT DETECTED')
end.
