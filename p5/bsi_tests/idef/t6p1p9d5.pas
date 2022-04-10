{TEST 6.1.9-5, CLASS=IMPLEMENTATIONDEFINED, NUMBER=16}

{: This program checks whether the required equivalent
   symbols can be used instead of the reference representation. }
{  The required alternative representations are for curly comment
   brackets and square subscript brackets. These must be provided
   since the necessary characters *, ), and . are available. }
{V3.1: Changed to test required alternatives, not just comments. }

program t6p1p9d5(output);
(* Test of alternate comment delimiters *)
var
   x: array (. 1 .. 10 .) of boolean;
   y: array [ 1 .. 10.) of boolean;
begin
   x(.1] := true;
   y[1.) := x[1];
 (* test of alternate comment delimiters. If these delimiters
   are not implemented a syntax error will result. *)
   writeln(' OUTPUT FROM TEST...6.1.9-5');
   writeln(' ALTERNATE SUBSCRIPT BRACKETS IMPLEMENTED');
   writeln(' ALTERNATE COMMENT DELIMITERS IMPLEMENTED');
   writeln(' IMPLEMENTATION DEFINED...6.1.9-5')
end.
