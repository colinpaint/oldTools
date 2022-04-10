{TEST 6.6.3.3-1, CLASS=CONFORMANCE}

{: This test checks that variable parameters have been
   implemented correctly. }
{  Jensen and Wirth state that the actual variables corresponding
   to formal variable parameters should be distinct. The axiomatic
   definition also includes non-local variables used by the
   procedure in this restriction. }
{V3.0: New test. }

program t6p6p3p3d1(output);
var a, b: integer;
procedure swap(var p, q: integer);
   var temp: integer;
   begin
   temp := p;
   p := q;
   q := temp
   end;
begin
   a := 1;  b := 2;
   swap(a, b);
   swap(a, a);
   if (b <> 1) or (a <> 2) then
     writeln(' FAIL...6.6.3.3-1')
   else
     writeln(' PASS...6.6.3.3-1')
end.
