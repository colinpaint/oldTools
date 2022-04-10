{TEST 6.8.3.5-15, CLASS=QUALITY}

{: This program checks that case-statements can be nested
   15 deep. }
{V3.0: New test. }

program t6p8p3p5d15(output);
var
   a, d: integer;
begin
   d := 31675;
   a := 0;
   case odd(d) of
    true:
      begin
      d := d div 2;   {15837}
      a := a + 1;
      case odd(d) of
       true:
         begin
         d := d div 2;   {7918}
         a := a + 2;
         case odd(d) of
          true: ;
          false:
            begin
            d := d div 2;   {3959}
            case odd(d) of
             true:
               begin
               d := d div 2;   {1979}
               a := a + 8;
               case odd(d) of
                true:
                  begin
                  d := d div 2;   {989}
                  a := a + 16;
                  case odd(d) of
                   true:
                     begin
                     d := d div 2;  {494}
                     a := a + 32;
                     case odd(d) of
                      true: ;
                      false:
                        begin
                        d := d div 2;   {247}
                        case odd(d) of
                         true:
                           begin
                           d := d div 2;   {123}
                           a := a + 128;
                           case odd(d) of
                            true:
                              begin
                              d := d div 2;  {61}
                              a := a + 256;
                              case odd(d) of
                               true:
                                 begin
                                 d := d div 2;  {30}
                                 a := a + 512;
                                 case odd(d) of
                                  true: ;
                                  false:
                                    begin
                                    d := d div 2;  {15}
                                    case odd(d) of
                                     true:
                                       begin
                                       d := d div 2;  {7}
                                       a := a + 2048;
                                       case odd(d) of
                                        true:
                                          begin
                                          d := d div 2; {3}
                                          a := a + 4096;
                                          case odd(d) of
                                           true:
                                             begin
                                             d := d div 2; {1}
                                             a := a + 8192;
                                             case odd(d) of
                                              true: a := a + 16384;
                                              false:
                                             end
                                             end;
                                           false:
                                          end
                                          end;
                                        false:
                                       end
                                       end;
                                     false:
                                    end
                                    end
                                 end
                                 end;
                               false:
                              end
                              end;
                            false:
                           end
                           end;
                         false:
                        end
                        end
                     end
                     end;
                   false:
                  end
                  end;
                false:
               end
               end;
             false:
            end
            end
         end
         end;
       false:
      end
      end;
    false:
   end;
   if a = 31675 then
      writeln(' QUALITY...6.8.3.5-15')
   else
      writeln(' FAIL...6.8.3.5-15')
end.
