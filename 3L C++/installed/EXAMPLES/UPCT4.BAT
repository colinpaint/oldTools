REM Compile, link, and configure the UPC example for T4 transputers
t4c driver
t4c upc

command/c t4ctask driver
command/c t4cstask upc

REM Configure tasks together
config upc.cfg upc.app

REM You may now type "afserver -:b upc.app"  to run the configured program



