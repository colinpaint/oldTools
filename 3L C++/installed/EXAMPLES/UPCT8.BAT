REM Compile, link, and configure the UPC example for T8 transputers
t8c driver
t8c upc

command/c t8ctask driver
command/c t8cstask upc

REM Configure tasks together
config upc.cfg upc.app

REM You may now type "afserver -:b upc.app"  to run the configured program

