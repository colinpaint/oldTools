{TEST 6.4.3.1-1, CLASS=CONFORMANCE}

{: This test checks that array, set, file and
   record types can be declared as packed. }
{V3.0: Comment revised. Was previously 6.4.3.1-3. }

program t6p4p3p1d1(output);
type
   urray    = packed array[1..10] of char;
   rekord   = packed record
                  bookcode : integer;
                  authorcode : integer
              end;
   fyle     = packed file of urray;
   card     = (heart,diamond,spade,club);
   sett     = packed set of card;
begin
   writeln(' PASS...6.4.3.1-1')
end.
