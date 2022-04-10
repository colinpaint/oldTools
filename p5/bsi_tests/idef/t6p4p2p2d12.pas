{TEST 6.4.2.2-12, CLASS=IMPLEMENTATIONDEFINED, NUMBER= 4}

{: This program provides the implementation-defined
   ordinal values of the required string-characters. }
{V3.1: New test. }

program t6p4p2p2d12(output);
const
   reqstr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+-*/=<>.,:;^() ''';
   lower  = 'abcdefghijklmnopqrstuvwxyz0123456789+-*/=<>.,:;^() ''';
var
   st: packed array [1 .. 52] of char;
   i, j: 1 .. 52;
begin
   st := reqstr;
   writeln(' OUTPUT FROM TEST...6.4.2.2-12');
   writeln(' ORDINAL VALUES OF CHARACTERS');
   writeln(' VALUE    CHAR BETWEEN DECIMAL POINTS');
   for i := 1 to 52 do
      begin
      write(ord(st[i]), '  .', st[i], '. ');
      case i of
      1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
      11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
      21, 22, 23, 24, 25, 26:
           writeln('UPPER CASE LETTER');
      27, 28, 29, 30, 31, 32, 33, 34, 35, 36:
           writeln('DIGIT');
      37:  writeln('PLUS');
      38:  writeln('MINUS');
      39:  writeln('MULTIPLY');
      40:  writeln('DIVIDE');
      41:  writeln('EQUALS');
      42:  writeln('LESS THAN');
      43:  writeln('GREATER THAN');
      44:  writeln('DECIMAL POINT');
      45:  writeln('COMMA');
      46:  writeln('COLON');
      47:  writeln('SEMICOLON');
      48:  writeln('UP-ARROW OR COMMERCIAL AT');
      49:  writeln('OPEN ROUND BRACKET');
      50:  writeln('CLOSED ROUND BRACKET');
      51:  writeln('SPACE');
      52:  writeln('APOSTROPHE')
      end;
      end;
   if 'a' = 'A' then
      writeln(' ONLY ONE ALPHABET')
   else
      begin
      st := lower;
      for i := 1 to 26 do
         writeln( ord(st[i]), ' .', st[i],
                  '. LOWER CASE LETTER');
      end;
   writeln(' IMPLEMENTATION DEFINED...6.4.2.2-12')
end.
