{TEST 6.9.3-1, CLASS=CONFORMANCE}

{: This test checks that a write that does not specify the file
   always writes on the default file at the program level, not
   any local variable with the same identifier. }
{  The processor fails if the program does not print PASS. }
{V3.0: Comment extended and writes revised. Was previously 6.9.4-15. }

program t6p9p3d1(output);
   procedure p;
   var
      output:text;
   begin
      rewrite(output);
      writeln(' PASS...6.9.3-1')
   end;
begin
   p
end.
