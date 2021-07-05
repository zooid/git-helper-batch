@echo off
set /p id="Enter Branch Name to create: "
pause
git checkout -b %id%
pause