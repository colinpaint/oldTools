@echo off
rm -f run_report.txt
rm -f listing.txt
echo IDEP report file >> run_report.txt
echo. >> run_report.txt
echo Examine file for files with errors >> run_report.txt
echo the end. >> run_report.txt
echo. >> run_report.txt
call runprog t6p5p3p2d6  run_report.txt listing.txt
call runprog t6p6p5p2d16 run_report.txt listing.txt
call runprog t6p6p5p2d17 run_report.txt listing.txt
call runprog t6p6p5p4d8  run_report.txt listing.txt
call runprog t6p6p5p4d9  run_report.txt listing.txt
call runprog t6p7p1d11   run_report.txt listing.txt
call runprog t6p7p1d12   run_report.txt listing.txt
call runprog t6p7p1d13   run_report.txt listing.txt
call runprog t6p7p1d14   run_report.txt listing.txt
call runprog t6p7p2p3d3  run_report.txt listing.txt
call runprog t6p7p2p3d4  run_report.txt listing.txt
call runprog t6p7p3d2    run_report.txt listing.txt
call runprog t6p8p2p2d1  run_report.txt listing.txt
call runprog t6p8p2p2d2  run_report.txt listing.txt
call runprog t6p8p2p3d2  run_report.txt listing.txt
call runprog t6p9p5d3    run_report.txt listing.txt
