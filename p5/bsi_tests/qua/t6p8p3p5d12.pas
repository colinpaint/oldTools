{TEST 6.8.3.5-12, CLASS=QUALITY}

{: This test checks that the case-constants are of the same type
   as the case index. }
{  A processor of good quality will detect that one path of the
   case statement cannot be taken.
   The case-index in this test is a subrange and the case-constants
   are of the base type. }
{V3.1: Writes revised and comment changed. }

program t6p8p3p5d12(output);
type
   day=(mon,tue,wed);
var
   a:integer;
   d:mon..tue;
begin
   for d:=mon to tue do
      case d of
      mon: a:=1;
      tue: a:=2;
      wed: a:=3
      end;
   writeln(' WARNING COULD BE ISSUED HERE.');
   writeln(' QUALITY...6.8.3.5-12');
end.
