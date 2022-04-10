{TEST 6.6.3.1-3, CLASS=CONFORMANCE}

{: This program tests that files may be passed to procedures
   as parameters. }
{  A file is a type, and any type may be passed as
   a parameter. }
{V3.1: Program parameter removed. }

program t6p6p3p1d3(output);
type
   fyle = text;
var
   elyf : fyle;
procedure test(var anyfile : fyle);
begin
   rewrite(anyfile);
   writeln(anyfile,'THIS FILE WAS A PARAMETER');
   writeln(' PASS...6.6.3.1-3')
end;
begin
   test(elyf)
end.
