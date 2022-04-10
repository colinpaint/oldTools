{TEST 6.7.2.3-4, CLASS=IMPLEMENTATIONDEPENDENT, NUMBER= 4}

{: This program determines if a boolean-expression is partially
   or completely evaluated when the value of the expression is
   determined before the expression is fully evaluated. }
{V3.1: Reclassified from IMPLEMENTATIONDEFINED. }

program t6p7p2p3d4(output);
var
   a:boolean;
   k,l:integer;

function sideeffect(var i:integer; b:boolean):boolean;
begin
   i:=i+1;
   sideeffect:=b
end;

begin
   writeln(' OUTPUT FROM TEST...6.7.2.3-4');
   writeln(' TEST OF SHORT CIRCUIT EVALUATION OF (A OR B)');
   k:=0;
   l:=0;
   a:=sideeffect(k,true) or sideeffect(l,true);
   if (k=0) and (l=1) then
      writeln(' ONLY SECOND EXPRESSION EVALUATED')
   else
      if (k=1) and (l=0) then
         writeln(' ONLY FIRST EXPRESSION EVALUATED')
      else
         if(k=1) and (l=1) then
            writeln(' BOTH EXPRESSIONS EVALUATED')
         else
            writeln(' INEXPLICABLE RESULT');
   writeln(' IMPLEMENTATION DEPENDENT...6.7.2.3-4')
end.
