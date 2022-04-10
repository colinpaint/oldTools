{TEST 6.6.3.7.3-3, CLASS=LEVEL1, SUBCLASS=ERRORHANDLING, NUMBER=59}

{: The purpose of this test is to exhibit the way the processor
   handles the error resulting from an access to an element of
   an array passed as a conformant array parameter when the index
   is outside the range of the bound-identifiers. }
{V3.1: Was test 6.6.3.7-9. }

program t6p6p3p7p3d3(output);
var
   i : integer;
   aarray,barray : array[1..2] of integer;
procedure swap(var a,b : array[low..high : integer] of integer);
   var
      temp : integer;
   begin
   temp := a[i];
   a[i] := b[i];
   b[i] := temp
   end;
begin
   for i := 2 downto 0 do
      swap(aarray,barray);
   writeln(' ERROR...6.6.3.7.3-3');
   writeln(' ERROR NOT DETECTED')
end.
