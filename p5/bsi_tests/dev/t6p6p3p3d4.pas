{TEST 6.6.3.3-4, CLASS=DEVIANCE}

{: This test deviates since an actual variable parameter shall
   not denote a field which is the selector of a variant-part. }
{V3.1: Assignment to tag-field S of figure added. }

program t6p6p3p3d4(output);
type
   shape  = (triangle,rectangle);
   figure = record
               area   :real;
               case s :shape of
                  triangle  : (base,height :real);
                  rectangle : (side1,side2 :real)
               end;
var
   ptr    : ^figure;
procedure findarea(var s : shape);
   begin
      case s of
         triangle : ptr^.area := (ptr^.base*ptr^.height)/2;
         rectangle: ptr^.area := ptr^.side1*ptr^.side2
      end
   end;
begin
   new(ptr);
   ptr^.s := rectangle;
   ptr^.side1 := 3;
   ptr^.side2 := 4;
   findarea(ptr^.s);     {illegal}
   if ptr^.area = 12 then
      writeln(' DEVIATES...6.6.3.3-4, VAR PARAMETER PASSING')
   else
      writeln(' DEVIATES...6.6.3.3-4, VAR PARAMETER DEVIANCE')
end.
