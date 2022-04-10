{TEST 6.4.3.3-1, CLASS=CONFORMANCE}

{: This program simply tests that all valid productions from
   the syntax for record-types are accepted by this processor. }
{V3.0: According to DP7185 'd = record ; end' is syntactically
   incorrect. Test the empty record. Also, record
   definition nesting to three deep included. }

program t6p4p3p3d1(output);
type
   string   = packed array[1..25] of char;
   married  = (false,true);
   shape    = (triangle,rectangle,square,circle);
   angle    = 0..90;
   a        = record
               year : integer;
               month : 1..12;
               day : 1..31
              end;
   b        = record
               name,firstname : string;
               age : 0..99;
               case  married of
                  true: (spousename : string);
                  false : ()
              end;
   c        = record
               case s : shape of
                  triangle : (side : real;
                              inclination,angle1,angle2 : angle);
                  square,rectangle : (side1,side2 : real;
                                      skew,angle3 : angle);
                  circle : (diameter : real)
              end;
   d        = record
              end;
   e        = record
                case married of
                  true : (spousename : string);
                  false : ()
                end;
   f        = record
               i1 : integer;
               r1 : record
                     i2 : integer;
                     r2 : record
                           i3 : integer
                          end
                    end
              end;
begin
   writeln(' PASS...6.4.3.3-1')
end.
