@echo off
rm -f run_report.txt
rm -f listing.txt
echo IDEF report file >> run_report.txt
echo. >> run_report.txt
echo Examine file for files with zero errors or that have "FAILS" at >> run_report.txt
echo the end. >> run_report.txt
echo. >> run_report.txt
call runprog t6p1p7d15    run_report.txt listing.txt
call runprog t6p1p9d5     run_report.txt listing.txt
call runprog t6p4p2p2d10  run_report.txt listing.txt
call runprog t6p4p2p2d11  run_report.txt listing.txt
call runprog t6p4p2p2d12  run_report.txt listing.txt
call runprog t6p6p6p2d11  run_report.txt listing.txt
call runprog t6p7p2p2d17  run_report.txt listing.txt
call runprog t6p9p3p2d4   run_report.txt listing.txt
call runprog t6p9p3p2d5   run_report.txt listing.txt
call runprog t6p9p3p2d6   run_report.txt listing.txt
call runprog t6p9p3p4p1d1 run_report.txt listing.txt
call runprog t6p9p3p4p1d2 run_report.txt listing.txt
call runprog t6p9p3p5d1   run_report.txt listing.txt
