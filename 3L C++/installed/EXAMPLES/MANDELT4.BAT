REM Compile, link and configure the MANDEL application for T4 transputers
t4c mandelm
t4c mandelw
t4c cga

command/c t4ctask mandelm cga
command/c t4cstask mandelw

REM configure `static' version of application
config mandel.cfg mandel.b4

REM configure `flood-filled' version of application
fconfig fmandel.cfg fmandel.b4

REM You may now type "afserver -:b mandel.b4"  to run the `static' version
REM or type "afserver -:b fmandel.b4" to run the `flood-filled' version
