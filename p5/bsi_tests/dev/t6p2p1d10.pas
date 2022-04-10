{$s}
{TEST 6.2.1-10, CLASS=DEVIANCE}

{: A processor should not allow multiple constant-definition-parts
   and type-definition-parts before a var part. }
{V3.0: New test to detect multiple const and type
   parts in declarations. }

program t6p2p1d10(output);

const nullstring='        ';
type  string8   =packed array[1..8] of char;

const linelength=80;
type
   lineindex=1..80;
   line=array[lineindex] of char;

var
   l:line; s:string8; i:lineindex;

begin
   s:=nullstring;
   for i:=1 to linelength do l[i]:=' ';
   writeln(' DEVIATES...6.2.1-10')
end.
