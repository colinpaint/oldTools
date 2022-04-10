{TEST 6.6.5.4-7, CLASS=ERRORHANDLING, NUMBER=31}

{: This program causes an error to occur by the call
   of the procedure unpack such that the index-type of the
   unpacked array is exceeded.  }
{V3.1: New test. }

program t6p6p5p4d7(output);
type
   bit = 0 .. 1;
   unpk = array [ 0 .. 3 ] of bit;
   pk = packed array [ 1 .. 4 ] of bit;
var
   a: unpk;
   z: pk;
   i: 1 .. 4;
begin
   for i := 1 to 4 do
      z[i] := 0;
   unpack(z, a, 1);
   writeln(' ERROR...6.6.5.4-7');
   writeln(' ERROR NOT DETECTED')
end.
