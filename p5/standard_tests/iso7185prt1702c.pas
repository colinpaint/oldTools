{$u}
{

PRT test 1702c: It is an error unless a variant is active for the entirety of
               each reference and access to each component of the variant.

               ISO 7185 reference: 6.5.3.3

               There are four possible cases for active variants:

                  A: Reference to discriminated variant.
                  B: Change to the tagfield of a discriminated variant with
                     an outstanding reference.
                  C: Read of an undiscriminated variant after a write.
                  D: Write of an undiscriminated variant with outstanding
                     reference.

               This is case C.
}

program iso7185prt1702(output);

var a: record case boolean of

          true: (i: integer);
          false: (c: char);

       end;
    c: char;

begin

   { This could fail if the compiler allocates tagfields even on undiscriminated
     variants and writes to the tagfield on a write to member. }
   a.i := 1;
   c := a.c

end.
