@echo off
set /p id="Enter Branch Name to delete: "
pause
git branch -D %id%

pause