{TEST 6.5.5-3, CLASS=ERRORHANDLING, NUMBER= 6}

{: This test causes an error by altering the value of a
   file-variable when a reference to the buffer-variable exists. }
{  This test is similar to 6.5.5-2, except that the
   buffer variable is an element of the record variable list
   of a with statement.
   The error should be detected by the processor. }
{V3.1: Comment changed. }

program t6p5p5d3(output);
type
   sex   = (male,female,notgiven);
   socialsecuritynumber = 0..10000;
   rekord = record
               a : socialsecuritynumber;
               b : sex
            end;
var
   fyle : file of rekord;
begin
   rewrite(fyle);
   with fyle^ do
   begin
      a:=9999;
      b:=notgiven;
      put(fyle)
   end;
   writeln(' ERROR...6.5.5-3');
   writeln(' ERROR NOT DETECTED')
end.
