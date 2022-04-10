@echo off
rem
rem Run test program and gather error information
rem
rem Execution:
rem
rem runprog program reportfile listingfile
rem
rem Runs a compile/run on the program, accumulating the output listing to
rem listingfile, and reporting on the run to the reportfile
rem 
echo Run for program %1.pas >> %2
call p5 %1 1> temp 2>&1
grep "Errors in program: " temp >> %2
grep "program complete" temp >> %2
grep "^ DEVIATES" temp >> %2
grep "^ QUALITY" temp >> %2
echo. >> %2
cat temp >> %3
rm temp
