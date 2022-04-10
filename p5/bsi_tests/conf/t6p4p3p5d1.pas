{TEST 6.4.3.5-1, CLASS=CONFORMANCE}

{: This test contains several file-variables, each of which has a
   different component-type. }
{  A file-type is a structured-type consisting of a sequence of
   components which are all one type. All cases in this program
   should be acceptable. }
{V3.1: Program parameters removed. }

program t6p4p3p5d1(output);
type
   i = integer;
   ptrtoi = ^i;
var
   file1 : file of char;
   file2 : file of real;
   file3 : file of
            record
               a : integer;
               b : boolean
            end;
   file4 : file of set of (red,blue,green,purple);
   file5 : file of ptrtoi;
begin
   writeln(' PASS...6.4.3.5-1')
end.
