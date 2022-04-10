{TEST 6.3-8, CLASS=DEVIANCE}

{: This program repeats some checks on the incorrect use of signed
   constants in other contexts. }
{  The other tests are constrained to use plus because of the
   higher probability that unary plus is regarded as a null
   operation.  Pascal-P is a frequent source of this error. }
{V3.1: Test rewritten. }

program t6p3d8(output);
const
   dot='.'; stars='****'; truth=true;
   minusdot=-dot;
   minusstars=-stars;
   minustruth=-truth;
var
   ch :char;
   bo :boolean;
   cs :packed array [1..4] of char;
begin
   ch := minusdot;
   ch := -dot;
   cs := minusstars;
   bo := minustruth;
   writeln(' DEVIATES...6.3-8')
end.
