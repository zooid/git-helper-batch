@echo off
set /p id="Enter Branch Name to upload: "
pause
git checkout -b %id%
pause