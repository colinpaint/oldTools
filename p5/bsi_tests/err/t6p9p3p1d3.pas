{TEST 6.9.3.1-3, CLASS=ERRORHANDLING, NUMBER=58}

{: This program contains the error of FracDigits being less than
   one. }
{  It should preferably be detected before run-time. }
{V3.1: Renumbered from 6.9.3.2-4. }

program t6p9p3p1d3(output);
var
   f:text;
   r,s,t:real;
begin
   rewrite(f);
   r:=0.9;
   s:=1.0;
   t:=1.1;
   write(f,r,s:10:0,t);
   writeln(' ERROR...6.9.3.1-3');
   writeln(' ERROR NOT DETECTED')
end.
