@echo off
set /p id="Enter Branch Name to switch to: "
pause

git checkout %id%

pause