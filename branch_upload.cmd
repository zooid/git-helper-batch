@echo off
@echo off
set /p id="Enter Branch Name to upload: "
pause
git remote add origin https://github.com/zooid/git-helper-batch.git
git push origin %id%
pause
