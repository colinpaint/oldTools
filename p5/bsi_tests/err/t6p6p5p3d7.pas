{TEST 6.6.5.3-7, CLASS=ERRORHANDLING, NUMBER= 5}

{: This program causes an error to occur as a variable which
   is an element of the record-variable-list of a
   with-statement is referred to by the pointer parameter of
   dispose. }
{V3.0: Writes revised. Was previously 6.6.5.3-6. }

program t6p6p5p3d7(output);
type
   subrange = 0..9999;
   rekord   = record
               name : packed array[1..15] of char;
               employeeno : subrange
              end;
var
   ptr : ^rekord;
begin
   new(ptr);
   with ptr^ do
   begin
      name:='HARRY M. MULLER';
      employeeno:=9998;
      dispose(ptr)
   end;
   writeln(' ERROR...6.6.5.3-7');
   writeln(' ERROR NOT DETECTED')
end.
