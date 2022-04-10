@echo off
rem
rem Script to run a pint self compile
rem
rem Run macro preprocessor to configure source for self compile.
rem
call pascpp source\pint -DWRDSIZ32 -DSELF_COMPILE
rem
rem Compile the final target, the PAT
rem
echo Compiling %1
call compile %1
type %1.err
rem
rem Compile pint itself
rem
echo Compiling pint to intermediate code
call compile source\pint.mpp
type source\pint.mpp.err
rem
rem Add the final target program (the pat) to the end of pint.
rem This means that the version of pint will read and interpret
rem this.
rem
cat source\pint.mpp.p5 %1.p5 > source\tmp.p5
del source\pint.mpp.p5
mv source\tmp.p5 source\pint.mpp.p5
rem
rem Create null input file
rem
echo.>source\pint.mpp.inp
rem
rem Now run pint on pint, which runs the PAT.
rem
echo Running pint on itself, to run the ISO 7185 PAT
call run source\pint.mpp
type source\pint.mpp.lst
