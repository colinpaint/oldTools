{TEST 6.6.5.4-2, CLASS=ERRORHANDLING, NUMBER=26}

{: This program causes an error to occur by use of the
   procedure pack such that the parameter of ordinal-type
   is not assignment compatible with the index-type of the
   unpacked array parameter. }
{V3.1: New test. }

program t6p6p5p4d2(output);
type
   pak = packed array [ 0 .. 15 ] of boolean;
var
   a: array [ 1 .. 16 ] of boolean;
   z: pak;
   i: 1 .. 16;
begin
   for i := 1 to 16 do
      a[i] := true;
   pack(a, 0, z);
   writeln(' ERROR...6.6.5.4-2');
   writeln(' ERROR NOT DETECTED')
end.
