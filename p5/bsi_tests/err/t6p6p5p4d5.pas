{TEST 6.6.5.4-5, CLASS=ERRORHANDLING, NUMBER=29}

{: This program causes an error to occur by use of the
   procedure unpack such that the parameter of ordinal-type
   is not assignment compatible with the index-type of the
   unpacked array parameter. }
{V3.1: New test. }

program t6p6p5p4d5(output);
type
   pak = packed array [ 0 .. 15 ] of boolean;
var
   a: array [ 1 .. 16 ] of boolean;
   z: pak;
   i: 0 .. 15;
begin
   for i := 0 to 15 do
      z[i] := true;
   unpack(z, a, 0);
   writeln(' ERROR...6.6.5.4-5');
   writeln(' ERROR NOT DETECTED')
end.
