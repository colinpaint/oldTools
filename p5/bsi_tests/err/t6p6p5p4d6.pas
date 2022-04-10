{TEST 6.6.5.4-6, CLASS=ERRORHANDLING, NUMBER=30}

{: This program causes an error to occur by the call of
   the procedure unpack when a component of the packed array is
   both undefined and accessed.  }
{V3.1: New test. }

program t6p6p5p4d6(output);
type
   unpk = array [ 1 .. 2 ] of char;
var
   a: unpk;
   z: packed array [ 1 .. 2 ] of char;
begin
   unpack(z, a, 1);
   writeln(' ERROR...6.6.5.4-6');
   writeln(' ERROR NOT DETECTED')
end.
