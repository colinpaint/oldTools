{TEST 6.5.5-1, CLASS=CONFORMANCE}

{: This program tests that file buffers may be referenced. }
{  The Pascal Standard states that the existence of a file
   variable f with components of type T implies the existence
   of a buffer variable of type T.
   Only the one component of a file variable determined by the
   current file position is directly accessible. }
{V3.1: Program parameter removed. }

program t6p5p5d1(output);
type
   rekord = record
               urray : array[1..2] of char;
               a : integer;
               b : real
            end;
var
   fyle : file of rekord;
begin
   rewrite(fyle);
   fyle^.urray[1]:='O';
   fyle^.urray[2]:='K';
   fyle^.a:=10;
   fyle^.b:=2.345;
   put(fyle);
   with fyle^ do
   begin
      urray[1]:='O';
      urray[2]:='K';
      a:=4;
      b:=3.456
   end;
   put(fyle);
   writeln(' PASS...6.5.5-1')
end.
