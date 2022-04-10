{TEST 6.9.1-5, CLASS=ERRORHANDLING, NUMBER=56}

{: This test checks that an error is produced when an attempt
   is made to read a real but the sequence of characters
   on the input file does not form a valid real. }
{V3.0: Test renumbered (was 6.9.2-5) to correspond with DP7185.
   Writes standardised. }

program t6p9p1d5(output);
var
   f:text;
   r:real;
begin
   rewrite(f);
   writeln(f,'ABC123.456');
   reset(f);
   read(f,r);      {should cause an error}
   writeln(' ERROR...6.9.1-5');
   writeln(' ERROR NOT DETECTED')
end.
