{TEST 6.6.5.3-21, CLASS=ERRORHANDLING, NUMBER=43}

{: This test causes an error by dereferencing a dangling pointer. }
{  If q=p then DISPOSE(p) acts on q also. }
{V3.1: New test from BNI. }

program t6p6p5p3d21(output);
var
   p,q:^integer;
begin
   new(p);
   p^:=5;
   q:=p;
   dispose(p);
   q^:=q^-1;
   writeln(' ERROR...6.6.5.3-21');
   writeln(' ERROR NOT DETECTED')
end.
