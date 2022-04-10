@echo off
rm -f run_report.txt
rm -f listing.txt
echo QUA report file >> run_report.txt
echo. >> run_report.txt
echo Examine file for files with errors or "FAIL">> run_report.txt
echo the end. >> run_report.txt
echo. >> run_report.txt
call runprog t6p1p3d3     run_report.txt listing.txt
call runprog t6p1p5d10    run_report.txt listing.txt
call runprog t6p1p5d11    run_report.txt listing.txt
call runprog t6p1p5d12    run_report.txt listing.txt
call runprog t6p1p5d8     run_report.txt listing.txt
call runprog t6p1p5d9     run_report.txt listing.txt
call runprog t6p1p7d14    run_report.txt listing.txt
call runprog t6p2p1d11    run_report.txt listing.txt
call runprog t6p2p1d12    run_report.txt listing.txt
call runprog t6p2p1d13    run_report.txt listing.txt
call runprog t6p2p1d14    run_report.txt listing.txt
call runprog t6p4p3p2d7   run_report.txt listing.txt
call runprog t6p4p3p2d8   run_report.txt listing.txt
call runprog t6p4p3p3d14  run_report.txt listing.txt
call runprog t6p4p3p3d15  run_report.txt listing.txt
call runprog t6p4p3p3d16  run_report.txt listing.txt
call runprog t6p4p3p4d4   run_report.txt listing.txt
call runprog t6p5p1d2     run_report.txt listing.txt
call runprog t6p5p3d1     run_report.txt listing.txt
call runprog t6p5p3p2d3   run_report.txt listing.txt
call runprog t6p5p3p2d4   run_report.txt listing.txt
call runprog t6p5p3p2d5   run_report.txt listing.txt
call runprog t6p6p1d8     run_report.txt listing.txt
call runprog t6p6p3p1d6   run_report.txt listing.txt
call runprog t6p6p5p3d12  run_report.txt listing.txt
call runprog t6p6p6p2d10  run_report.txt listing.txt
call runprog t6p6p6p2d6   run_report.txt listing.txt
call runprog t6p6p6p2d7   run_report.txt listing.txt
call runprog t6p6p6p2d8   run_report.txt listing.txt
call runprog t6p6p6p2d9   run_report.txt listing.txt
call runprog t6p7p1d15    run_report.txt listing.txt
call runprog t6p7p1d3     run_report.txt listing.txt
call runprog t6p7p1d4     run_report.txt listing.txt
call runprog t6p7p1d5     run_report.txt listing.txt
call runprog t6p7p2p2d14  run_report.txt listing.txt
call runprog t6p7p2p2d15  run_report.txt listing.txt
call runprog t6p7p3d1     run_report.txt listing.txt
call runprog t6p8p3p10d7  run_report.txt listing.txt
call runprog t6p8p3p2d1   run_report.txt listing.txt
call runprog t6p8p3p2d2   run_report.txt listing.txt
call runprog t6p8p3p4d2   run_report.txt listing.txt
call runprog t6p8p3p5d12  run_report.txt listing.txt
call runprog t6p8p3p5d13  run_report.txt listing.txt
call runprog t6p8p3p5d14  run_report.txt listing.txt
call runprog t6p8p3p5d15  run_report.txt listing.txt
call runprog t6p8p3p7d4   run_report.txt listing.txt
call runprog t6p8p3p8d3   run_report.txt listing.txt
call runprog t6p8p3p9d20  run_report.txt listing.txt
call runprog t6p9p1d6     run_report.txt listing.txt
call runprog t6p9p1d7     run_report.txt listing.txt
call runprog t6p9p1d8     run_report.txt listing.txt
call runprog t6p9p2d2     run_report.txt listing.txt
call runprog t6p9p3d2     run_report.txt listing.txt
call runprog t6p9p3d3     run_report.txt listing.txt
call runprog t6p9p3p5p2d2 run_report.txt listing.txt
call runprog t6p9p4d2     run_report.txt listing.txt
