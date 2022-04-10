{TEST 6.4.3.2-1, CLASS=CONFORMANCE}

{: This program tests all the valid productions for an
   array declaration from the syntax. }
{V3.0: Comment revised. Three-dimensional array added. }

program t6p4p3p2d1(output);
type
   t1          = 0..1;
   cards       = (two,three,four,five,six,seven,eight,nine,ten,jack,
                  queen,king,ace);
   suit        = (heart,diamond,spade,club);
   hand        = array[cards] of suit;
   picturecards= array[jack..king] of suit;
   played      = array[cards] of array[heart..diamond] of boolean;
   playedtoo   = array[cards,heart..diamond] of boolean;
   a3          = array[t1] of array[t1] of array[t1] of boolean;
begin
   writeln(' PASS...6.4.3.2-1')
end.
