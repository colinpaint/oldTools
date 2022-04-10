{TEST 6.1.6-4, CLASS=DEVIANCE}

{: This program checks that a processor does not implement the
   'const' facility as a simple textual macro. }
{  The program illustrates one  of the cases where syntactic
   knowledge is then required to reject incorrect programs. }
{V3.0: New test. }

program t6p1p6d4(output);
label
   5,6,7;
const
   five=5; six=6; seven=7;
begin
      goto five;
six:  goto 7;
5:    goto 6;
7:    writeln(' DEVIATES...6.1.6-4')
end.
