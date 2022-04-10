{TEST 6.1.7-11, CLASS=DEVIANCE}

{: A null string should not be accepted by a Pascal processor. }
{  The Pascal Standard says that a character string is a
   sequence of characters enclosed by apostrophes,
   consequently there is no NULL string, and the processor should
   not allow them in programs. }
{V3.0: Comment and writing revised. }

program t6p1p7d11(output);
begin
   writeln('':20);
   writeln(' DEVIATES...6.1.7-11')
end.
