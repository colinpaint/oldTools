{TEST 6.4.3.3-5, CLASS=CONFORMANCE}

{: This test checks that an empty record can be assigned to
   field of a record. }
{  A record-value exists when none of its fields are undefined.
   Since the empty record types have no fields they are always
   defined immediately after activation (of a block or variant or
   variable).  This program assigns such a value to a compatible
   field of an identical type.  In most implementations this
   involves the very efficient transference of nothing, but
   some processors may get knotted. }
{V3.1: Unchanged since 3.0, but the validity of this test is
       doubtful. It can be argued that the program contains
       error 43 (undefined value) for the access to empty.
       However, this would make variant records difficult to
       handle correctly. Ignore this test for compiler
       validation. }

program t6p4p3p3d5(output);
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
   with number do
   begin
      status:=undefined;
      e:=empty
   end;
   writeln(' PASS...6.4.3.3-5')
end.
