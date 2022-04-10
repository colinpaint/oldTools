@echo off
rm -f run_report.txt
rm -f listing.txt
echo LEX report file >> run_report.txt
echo. >> run_report.txt
echo Examine file for files with errors or "DEVIATES" or "QUALITY">> run_report.txt
echo the end. >> run_report.txt
echo. >> run_report.txt
call runprog t6p10d2 run_report.txt listing.txt
call runprog t6p10d5 run_report.txt listing.txt
call runprog t6p1p2d10 run_report.txt listing.txt
call runprog t6p1p2d7 run_report.txt listing.txt
call runprog t6p1p2d9 run_report.txt listing.txt
call runprog t6p1p8d6 run_report.txt listing.txt
call runprog t6p1p9d6 run_report.txt listing.txt
call runprog t6p2p1d3 run_report.txt listing.txt
call runprog t6p9p5d1 run_report.txt listing.txt
