{TEST 6.1.9-7, CLASS=EXTENSION, SUBCLASS=IMPLEMENTATIONDEFINED}

{: This program checks whether equivalent symbols can be used for
   the standard reference representation. }
{  Commonly accepted equivalent symbols for the relational operators
   <,>,<=,>=,<> are checked. However, they are not standard Pascal.
   They are implemented if the program prints EQUIVALENT RELATIONAL
   SYMBOLS IMPLEMENTED. }
{V3.0: Test renumbered (was 6.11-3) to correspond with DP7185.
   Class changed to EXTENSION because these alternate symbols
   are not prescribed in DP7185. Writes revised accordingly.
   Unnecessary vars l and b removed. }

program t6p1p9d7(output);
var
   j,k : integer;
begin
   writeln(' EQUIVALENT RELATIONAL SYMBOLS IMPLEMENTED');
   j:=1;
   k:=2;
   if (k GT j) and (j LT k) and (k GE j) and (j LE k) and (j NE k) then
      writeln(' IMPLEMENTATION DEFINED...6.1.9-7')
   else
      writeln(' FAIL...6.1.9-7, EQUIVALENT SYMBOLS')
end.
