{TEST 6.8.3.5-9, CLASS=DEVIANCE}

{: This test deviates by using a string as a case-constant. }
{  This program deviates. Firstly, the final case constant
   is a string, rather than of type char. The processor may
   detect this and inhibit execution of the program. Alternately,
   it may issue a warning, then allow execution. In the latter
   case, an error will result when the case index is equal to 'd',
   as there is no matching case constant. }
{V3.1: Reclassified from ERRORHANDLING. }

program t6p8p3p5d9(output);
var
   a:char;
   i:integer;
begin
   for a:= 'a' to 'd' do
      case a of
      'a': i:=1;
      'b': i:=i+1;
      'c': i:=i+1;
      'de': i:=i+1
      end;
   writeln(' DEVIATES...6.8.3.5-9')
end.
