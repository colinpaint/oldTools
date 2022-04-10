{TEST 6.6.5.4-4, CLASS=ERRORHANDLING, NUMBER=28}

{: This program causes an error to occur by the call
   of the procedure pack such that the index-type of the
   unpacked array is exceeded.  }
{V3.1: New test. }

program t6p6p5p4d4(output);
type
   bit = 0 .. 1;
   unpk = array [ 0 .. 3 ] of bit;
   pk = packed array [ 1 .. 4 ] of bit;
var
   a: unpk;
   z: pk;
   i: 0 .. 3;
begin
   for i := 0 to 3 do
      a[i] := 0;
   pack(a, 1, z);
   writeln(' ERROR...6.6.5.4-4');
   writeln(' ERROR NOT DETECTED')
end.
