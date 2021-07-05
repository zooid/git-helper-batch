@echo off
set /p id="Enter Branch Name to switch to: "
pause
git checkout master
git merge %id%
pause