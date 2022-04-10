{TEST 6.9.1-4, CLASS=ERRORHANDLING, NUMBER=54}

{: This test checks that an error is produced when an attempt
   is made to read an integer but the sequence of characters
   on the input file does not form a valid signed integer. }
{V3.0: Test renumbered (was 6.9.2-4) to correspond with DP7185.
   Writes standardised. }

program t6p9p1d4(output);
var
   f:text;
   i:integer;
begin
   rewrite(f);
   writeln(f,'ABC123');
   reset(f);
   read(f,i);      {should cause an error}
   writeln(' ERROR...6.9.1-4');
   writeln(' ERROR NOT DETECTED')
end.
