{$s}
{TEST 6.3-1, CLASS=CONFORMANCE}

{: This program exhibits all legal productions for a constant
   in a constant-definition. }
{V3.0: Added value check, and changed identifier 'minustentoo'
   to 'minustoo' so as to avoid non-uniqueness in first
   eight characters. }

program t6p3d1(output);
const
   ten = 10;
   minusten = -10;
   minustoo = -ten;
   decade = ten;
   dot = '.';
   stars = '****';
   on = true;
   pi = 3.1415926;
   minuspi = - pi;
begin
   if (ten + minusten + decade + minustoo = 0) and
      (dot = '.') and (stars = '****') and
      (on =true) and (abs(pi+minuspi) < 0.001) then
      writeln(' PASS...6.3-1')
   else
      writeln(' FAIL...6.3-1')
end.
