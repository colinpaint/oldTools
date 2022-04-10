{TEST 6.2.3.5-1, CLASS=ERRORHANDLING, NUMBER=43}

{: This test causes an error by using a totally-undefined
   variable. }
{  All variables whose identifiers are declared in the variable-
   declaration-part of a block, except for those listed as program
   parameters, shall be TOTALLY-UNDEFINED when execution of the
   statement-part of their block commences.  Since the use of
   values of totally-undefined variables is an error, the
   program below evokes that error.  An ideal processor will
   find the program unacceptable and state why.  If the error
   is undetected, various results may be printed, depending
   on the implementation.  Possible results are a system-
   initialized value, or rubbish left over from earlier
   activations, probably procedure q. }
{V3.1: Renumbered from 6.2.1-11. }

program t6p2p3p5d1 (output);

procedure q;
var
   i,j : integer;
begin
   i:=2;
   j:=3
end;

procedure r;
var
   i,j : integer;
begin
   j := i-4;
   writeln(' ERROR...6.2.3.5-1');
   writeln(' ERROR NOT DETECTED');
   writeln(' THE VALUE OF I IS ', i)
end;

{ Program body }
begin
   q;
   r
end.
