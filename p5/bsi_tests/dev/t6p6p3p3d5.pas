{TEST 6.6.3.3-5, CLASS=DEVIANCE}

{: This test deviates since an actual variable parameter shall
   not denote a component of a packed variable. }
{V3.0: New test. }

program t6p6p3p3d5(output);
type
   card = packed array[1..80] of char;
var
   image : card;
function headercard(var col1 :char) : boolean;
   begin
      if col1 = 'H' then
         headercard := true
      else
         headercard := false
   end;
begin
   image[1] := ' ';
   if headercard(image[1]) then
      writeln(' DEVIATES...6.6.3.3-5, VAR PARAMETER PASSING(1)')
   else
      writeln(' DEVIATES...6.6.3.3-5, VAR PARAMETER PASSING(2)')
end.
