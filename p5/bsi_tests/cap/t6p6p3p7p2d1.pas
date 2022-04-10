{TEST 6.6.3.7.2-1, CLASS=LEVEL1, SUBCLASS=CONFORMANCE}

{: This test checks all the main facilities of value
   conformant arrays. }
{  Each syntactic form of actual parameter is provided. }
{V3.1: New test. }

program t6p6p3p7p2d1(output);
const
   str = 'abc';
var
   fail: boolean;
   st: packed array [1..3] of char;
procedure p(a: packed array [la..ua: integer] of char;
            b: packed array [lb..ub: integer] of char;
            c: packed array [lc..uc: integer] of char);
   var
      i: integer;
   begin
   fail := fail or (la<>1) or (lb<>1) or (lc<>1) or
                  (ua<>3) or (ub<>3) or (uc<>3);
   for i := 1 to 3 do
      fail := fail or (a[i]<>b[i]) or (b[i]<>c[i]);
   end;
begin
fail := false;
st := 'abc';
p('abc', st, str);
p(('abc'), (st), (str));
if fail then
   writeln(' FAIL...6.6.3.7.2-1')
else
   writeln(' PASS...6.6.3.7.2-1')
end.
