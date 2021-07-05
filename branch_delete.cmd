@echo off
set /p id="Enter Branch Name to delete: "
pause
git branch -d %id%
pause