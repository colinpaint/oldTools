{TEST 6.4.3.3-3, CLASS=CONFORMANCE}

{: This test checks that an empty record can be declared. }
{  Since this is the limiting case of a structured-type, some
   processors may mis-handle it.  The following program
   illustrates one of the uses. }
{V3.0: Comment revised and test slightly extended. }

program t6p4p3p3d3(output);
type
   statuskind  = (defined,undefined);
   emptykind   = record end;
var
   empty : emptykind;
   number: record
            case status:statuskind of
               defined  : (i : integer);
               undefined: (e : emptykind)
            end;
begin
   with number do begin
      status:=defined;
      i:=7
   end;
   with number do begin
      status:=undefined
   end;
   writeln(' PASS...6.4.3.3-3')
end.
