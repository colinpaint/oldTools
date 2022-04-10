{TEST 6.6.2-5, CLASS=DEVIANCE}

{: This program tests the processors actions when the type of
   result returned by a function is not a simple type. }
{V3.0: Type urray has to be packed.
   Assignment-statements in main program corrected.
   Write for DEVIATES elaborated. Was previously 6.6.2-4. }

program t6p6p2d5(output);
type
   wrekord = record
               a : integer;
               b : boolean
             end;
   sett    = set of 0..3;
   urray   = packed array[1..3] of char;
var
   record1 : wrekord;
   set1    : sett;
   array1  : urray;

function one : sett;
begin
   one:=[0..3]
end;

function two : urray;
begin
   two:='ABC'
end;

function three : wrekord;
var
   rekord : wrekord;
begin
   rekord.a:=1;
   rekord.b:=true;
   three:=rekord
end;

begin
   set1:=one;
   array1:=two;
   record1:=three;
   writeln(' DEVIATES...6.6.2-5')
end.
