{TEST 6.4.5-16, CLASS=DEVIANCE}

{: This test violates the type rules for relational-operators
   using sets as operands. }
{  A relational-operator between values of a set type can
   either have compatible operands or be of the same
   cannonical set-of-T type. In this instance, the T is not
   the same (one packed, other unpacked). }
{V3.1: New test. }

program t6p4p5d16(output);
type
   BType  = set of boolean;
   PType  = packed set of false..true;
var
   flag:boolean; B:BType; P:PType;
begin
   B:=[true,false];
   P:=[true];
   flag:=(B >= P); { B,P, not compatible }
   writeln(' DEVIATES...6.4.5-16')
end.
