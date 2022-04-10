{TEST 6.9.3-2, CLASS=QUALITY}

{: This program checks that data written appears on the output
   file regardless of the omission of a line marker. }
{  The common error is to buffer output and fail to flush the
   buffers at end of job. }
{V3.1: Program parameter removed. }

program t6p9p3d2(output);
begin
   write(' QUALITY...6.9.3-2')
end.
