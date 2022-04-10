{TEST 6.7.2.4-4, CLASS=ERRORHANDLING, NUMBER=50}

{: This test checks that operations on overlapping sets are
   detected. }
{V3.0: Writes revised. Was previously 6.7.2.4-1. }

program t6p7p2p4d4(output);
var
   a,d : set of 0..10;
   b,c : set of 5..15;
begin
   b:=[5,10];
   a:=[0,5,10];
   d:=a+b;   {ok}
   b:=[5,10,15];
   c:=a+b;   {should be an error}
   writeln(' ERROR...6.7.2.4-4');
   writeln(' ERROR NOT DETECTED')
end.
