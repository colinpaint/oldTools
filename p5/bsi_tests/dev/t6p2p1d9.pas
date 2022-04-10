{$s}
{TEST 6.2.1-9, CLASS=DEVIANCE}

{: This test checks that the type-definition-part and
   variable-declaration-part cannot be repeated in a block. }
{: Some processors may require that declaration-parts
   appear in a specific order but permit repetitions
   of the sequence. }
{V3.1: Comment changed. }

program t6p2p1d9(output);
type
   stackptr = ^ stackcell;
   stackcell = record i:integer; next:stackptr end;
var
   topofstack,bottomofstack:stackptr;
   freestackcells:stackptr;
procedure initstack;
begin
   topofstack:=nil; bottomofstack:=nil; freestackcells:=nil
end;

type
   listptr=^listcell;
   listcell=record c:char; p:listptr end;
var
   freecells:listptr;
procedure initfreelistcells;
begin freecells:=nil end;

begin { Main program }
   initstack; initfreelistcells;
   writeln(' DEVIATES...6.2.1-9')
end.
