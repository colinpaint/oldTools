{TEST 6.6.5.3-13, CLASS=ERRORHANDLING, NUMBER= 19}

{: This test causes an error by activating a variant which is
   different from those specified by new(p,c1, ,cn). }
{V3.1: New test. }

program t6p6p5p3d13(output);
type
   rec = record
           case tag : boolean of
              true  : (b1,b2 : boolean);
              false : (i1,i2 : integer)
         end;
var
   ptr : ^rec;
begin
   new(ptr,true);
   ptr^.tag := false;      { error }
   writeln(' ERROR...6.6.5.3-13');
   writeln(' ERROR NOT DETECTED')
end.
