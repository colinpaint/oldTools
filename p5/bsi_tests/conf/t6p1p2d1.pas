{TEST 6.1.2-1, CLASS=CONFORMANCE}

{: This test checks that identifiers and word-symbols are correctly
   distinguished in cases where the two are 'close' in a sense which
   has been found to be important. }
{  Note that this test is relevant even to processors that practice
   8-character identifier truncation, as they still have the
   responsibility to recognize the reserved word set correctly. }
{V3.0: Comment and program changed due to change in DP7185.
   Test now avoids the loophole which allowed deviant processors
   to ignore it, due to masking effect of identifiers which had
   the same first eight characters. Was previously 6.1.2-3. }

program t6p1p2d1(output);
var
   functionx,functiom:integer;
   iffy:boolean;

procedure procedur(var procedurf:integer);
begin
   procedurf := 10
end;

function functio(procedurex:integer):integer;
begin
   functio := procedurex
end;

begin
   iffy:=true;
   procedur(functionx);
   functiom := functio(functionx);
   if iffy and (functiom = 10) then
      writeln(' PASS...6.1.2-1')
   else
      writeln(' FAIL...6.1.2-1')
end.
