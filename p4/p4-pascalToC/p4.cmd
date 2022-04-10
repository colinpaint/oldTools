@echo off
if "%1" == "" goto error
del %1.pc %1.out prr prd > NUL: 2>&1
pcom < %1.p && copy prr %1.pc > NUL: 2>&1 && move prr prd  > NUL: 2>&1 && pint && move prr %1.out  > NUL: 2>&1
del prd prr > NUL: 2>&1
goto end
:error
echo No filename given !
:end
