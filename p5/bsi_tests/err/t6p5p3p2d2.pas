{TEST 6.5.3.2-2, CLASS=ERRORHANDLING, NUMBER= 1}

{: This test allows an array index to exceed the array bounds. }
{  This may present some problems to particular implementations. }
{V3.0: Comment changed - test not similar to 6.4.5-6.
   Writes revised. Was previously 6.5.3.2-1. }

program t6p5p3p2d2(output);
var
   urray : array[1..10,1..10] of integer;
   i     : integer;
begin
   i:=3;
   urray[i*2,i*4]:=0;     {error}
   writeln(' ERROR...6.5.3.2-2');
   writeln(' ERROR NOT DETECTED')
end.
