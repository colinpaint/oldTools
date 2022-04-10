@echo off
rm -f run_report.txt
rm -f listing.txt
echo ERR report file >> run_report.txt
echo. >> run_report.txt
echo Examine file for files with zero errors or that have "FAILS" at >> run_report.txt
echo the end. >> run_report.txt
echo. >> run_report.txt
call runprog t6p1p9d7 run_report.txt listing.txt
call runprog t6p1p9d8 run_report.txt listing.txt
call runprog t6p8p3p5d16 run_report.txt listing.txt

