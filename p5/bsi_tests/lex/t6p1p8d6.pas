{TEST 6.1.8-6, CLASS=QUALITY}

{: This test determines whether the processor helps the programmer
   to detect unclosed comments. }
{  Hard to trace run-time errors may occur if a comment
   accidentally encloses 1 or more statements. }
{V3.0: Writeln added at end of program. Was previously 6.1.8-4. }

program t6p1p8d6(output);
var
   i : integer;
begin
   i:=10;
   { Now write out the value of i.
   writeln(' THE VALUE OF I IS:', i);
   { The value of i will not be printed because of the unclosed
     previous comment. }
   write  (' PROCESSOR SHOULD ISSUE A WARNING FOR A POSSIBLE');
   writeln(' UNCLOSED COMMENT');
   writeln(' QUALITY...6.1.8-6');
end.
