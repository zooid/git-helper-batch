@echo off
set /p id="Enter Branch Name to merge to: "
pause
git checkout master
git merge %id%
pause