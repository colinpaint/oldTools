{TEST 6.6.5.4-3, CLASS=ERRORHANDLING, NUMBER=27}

{: This program causes an error to occur by the call of
   the procedure pack when a component of the unpacked array is
   both undefined and accessed.  }
{V3.1: New test. }

program t6p6p5p4d3(output);
type
   unpk = array [ 1 .. 2 ] of char;
var
   a: unpk;
   z: packed array [ 1 .. 2 ] of char;
begin
   pack(a, 1, z);
   writeln(' ERROR...6.6.5.4-3');
   writeln(' ERROR NOT DETECTED')
end.
