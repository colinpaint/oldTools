{TEST 6.2.2-3, CLASS=CONFORMANCE}

{: This test checks the scope conformance of pointer-types. }
{  This program is similar to 6.2.2-6, however a type identifier,
   say T, which specifies the domain of a pointer type ^T, is
   permitted to have its defining point anywhere in the type
   definition part in which ^T occurs.
   Thus in this example, (node=integer)s' scope is excluded from the
   type definition of ouch. }
{V3.1: Real changed to integer. }

program t6p2p2d3(output);
type
   node = integer;
procedure ouch;
type
   p = ^node;
   node = boolean;
var
   ptr : p;
begin
   new(ptr);
   ptr^:=true;
   writeln(' PASS...6.2.2-3')
end;
begin
   ouch
end.
