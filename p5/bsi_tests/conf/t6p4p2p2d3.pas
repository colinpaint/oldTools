{TEST 6.4.2.2-3, CLASS=CONFORMANCE}

{: This test checks that the required constant identifiers, true
   and false, have been correctly enumerated. }
{  The Pascal Standard states that type boolean shall have
   enumeration values which are denoted by false and true, such
   that false is the predecessor of true.  It also states that
   the ord of these values are 0 and 1 respectively. }
{V3.1: Comment changed. }

program t6p4p2p2d3(output);
begin
   if (pred(true)=false) and (succ(false)=true) and
      (ord(false)=0) and (ord(true)=1) and
      (false < true)  and (ord(not false)=1) then
      writeln(' PASS...6.4.2.2-3')
   else
      writeln(' FAIL...6.4.2.2-3')
end.
