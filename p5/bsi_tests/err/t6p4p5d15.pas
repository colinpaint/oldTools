{TEST 6.4.5-15, CLASS=ERRORHANDLING, NUMBER=49}

{: This program causes an error by assigning an out-of-range
   value to a variable. }
{  The test is of interest where the processor consists of a
   compiler plus execution system, in which case the error should
   certainly be detected somewhere, but preferably during
   compilation. }
{V3.0: New test. }

program t6p4p5d15(output);
var i: 5 .. 10;
    j: 0 .. 4;
begin
   i := 5;
   j := i;
   writeln(' THE VALUE OF I IS ', i);
   writeln(' THE VALUE OF J IS ', j);
   writeln(' ERROR...6.4.5-15');
   writeln(' ERROR NOT DETECTED')
end.
