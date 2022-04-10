{TEST 6.4.3.3-8, CLASS=DEVIANCE}

{: This  test deviates since the set of values of a tag-type
   should equal the values of the case-constants. }
{  The Pascal Standard states that the case-constants of a
   variant-part shall be distinct and of a type compatible with
   the tag-type.  Also the set of values shall be equal to the
   set of values of the tag-type.  In this program the first
   two prescriptions are met, but the number of values is greater
   than the set of values of the tag-type. }
{V3.0: Test reclassified from CONFORMANCE to DEVIANCE due to
   change in DP7185, with consequential effects on comment and
   messages printed. Was previously 6.4.3.3-10. }

program t6p4p3p3d8(output);
type
   a = 0..3;
   b = record
         case c:a of
            0: (d:array[1..2] of boolean);
            1: (e:array[1..3] of boolean);
            2: (f:array[1..4] of boolean);
            3: (g:array[1..5] of boolean);
            4: (h:array[1..6] of boolean)
       end;
begin
   writeln(' DEVIATES...6.4.3.3-8')
end.
