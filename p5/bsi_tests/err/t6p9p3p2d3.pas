{TEST 6.9.3.2-3, CLASS=ERRORHANDLING, NUMBER=58}

{: This program contains the error of FracDigits being less than
   one. }
{  This test is similar to 6.9.3.2-4, except that FracDigits is
   a variable. The error should therefore be detected at run time. }
{V3.1: Renumbered from 6.9.3.2-5. }

program t6p9p3p2d3(output);
var
   f:text;
   r,s,t:real;
   fd:integer;
begin
   rewrite(f);
   r:=0.9;
   s:=0.0;
   t:=1.1;
   fd:=pred(1);
   write(f,r,s:10:fd,t);
   writeln(' ERROR...6.9.3.2-3');
   writeln(' ERROR NOT DETECTED')
end.
