{TEST 6.6.3.1-5, CLASS=DEVIANCE}

{: An identifier occurring in a formal-parameter-list should not
   subsequently appear as a local variable. }
{  The occurrence of an identifier within an identifier list of
   a parameter group is its defining occurence as a parameter
   identifier for the formal parameter list in which it occurs
   and any corresponding procedure block or function block.
   This precludes the declaration of a local variable with the
   same name as an identifier in the formal parameter list.
   This test checks whether the processor detects this as an
   error, or allows it to occur with some form of side effect. }
{V3.0: 8 character significance - deviates1 is now deviate1.
   Writes revised. Was previously 6.6.3.1-4. }

program t6p6p3p1d5(output);
var
   i : integer;
procedure deviates(var x : integer);
   var x : integer;
begin
   x:=2*x;
   writeln(' X=',x,' IN PROCEDURE DEVIATES')
end;
procedure deviate1(x : integer);
   var x : integer;
begin
   x:=0;
   x:=2*x;
   writeln(' X=',x,' IN PROCEDURE DEVIATE1')
end;

begin
   i:=5;
   deviates(i);
   i:=5;
   deviate1(i);
   writeln(' DEVIATES...6.6.3.1-5')
end.
