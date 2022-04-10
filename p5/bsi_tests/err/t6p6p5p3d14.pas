{TEST 6.6.5.3-14, CLASS=ERRORHANDLING, NUMBER= 20}

{: This test causes an error since an identifying-value which had
   been created using the form new(p,c1, ,cn) is consequently
   removed by applying dispose(p). }
{V3.1: New test. }

program t6p6p5p3d14(output);
type
   rec = record
            case tag : boolean of
               true  : (b1,b2 : 1..10);
               false : (b3 : 11..20)
         end;
var
   ptr : ^rec;
begin
   new(ptr,true);
   dispose(ptr);      { error }
   writeln(' ERROR...6.6.5.3-14');
   writeln(' ERROR NOT DETECTED')
end.
