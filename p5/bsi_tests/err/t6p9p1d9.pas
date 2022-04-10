{TEST 6.9.1-9, CLASS=ERRORHANDLING, NUMBER= 57}

{: This test causes an error by reading from a textfile when
   the buffer-variable is undefined, by a call of read. }
{V3.1: New test. }

program t6p9p1d9(output);
var
   ch : char;
   f : text;
begin
   rewrite(f);
   writeln(f,'ONE LINE');
   reset (f);
   while not eof(f) do
      read(f,ch);
   read(f,ch);      { error since f^ is undefined }
   writeln(' ERROR...6.9.1-9');
   writeln(' ERROR NOT DETECTED')
end.
