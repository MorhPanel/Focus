@echo OFF
set FullScriptPath=%~dp0
py -3 %FullScriptPath%prepare.py %*
if %errorlevel% neq 0 (
    python %FullScriptPath%prepare.py %*
)
if %errorlevel% neq 0 goto error
exit /b

:error
echo FAILED
exit /b 1
