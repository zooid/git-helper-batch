@ECHO OFF&& SETLOCAL&& PUSHD "%~dp0"&& SETLOCAL ENABLEDELAYEDEXPANSION&& SETLOCAL ENABLEEXTENSIONS&& SET V=5&& IF NOT "!V!"=="5" (ECHO DelayedExpansion Failed&& GOTO :EOF)


goto menu
:menu
cls
color 1b
echo.
echo			  Choose Wisely!
echo.
echo    		      Choice
echo.
echo		 1. Create new branch
echo		 2. Check changes
echo		 3. Stage all changes
echo		 4. Commit all staged
echo		 5. Merge branch with master
echo		 6. Delete branch
echo		 7. Fetch all
echo		 8. Download all changes from online repo
echo		 9. Upload branch
echo		10. Info about previous commits
echo		11. List all branches
echo		12. Init repo from current directory
echo		13. Branch switch
echo		.......................................
echo		14. next page
echo		.......................................
echo		0. Quit
echo.

:choice
set /P C=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,0]? > nul
if "%C%"=="0" goto 0 > nul
if "%C%"=="14" goto menu1 > nul
if "%C%"=="13" goto 13 > nul
if "%C%"=="12" goto 12 > nul
if "%C%"=="11" goto 11 > nul
if "%C%"=="10" goto 10 > nul
if "%C%"=="9" goto 9 > nul
if "%C%"=="8" goto 8 > nul
if "%C%"=="7" goto 7 > nul
if "%C%"=="6" goto 6 > nul
if "%C%"=="5" goto 5 > nul
if "%C%"=="4" goto 4 > nul
if "%C%"=="3" goto 3 > nul
if "%C%"=="2" goto 2 > nul
if "%C%"=="1" goto 1 > nul

:1
set /p id="Enter Branch Name to upload: "
pause
git checkout -b %id%
pause
goto menu

:2
git status .
pause
goto menu

:3
git add .
pause
goto menu

:4
git commit -m "new commit"
pause
goto menu

:5
set /p id="Enter Branch Name to merge to: "
pause
git checkout master
git merge %id%
pause
goto menu

:6
set /p id="Enter Branch Name to delete: "
pause
git branch -d %id%
pause
goto menu

:7
git fetch --all
pause
goto menu

:8
git pull origin master
pause
goto menu

:9
set /p id="Enter Branch Name to upload: "
pause
git remote add origin https://github.com/zooid/git-helper-batch.git
git push origin %id%
pause
goto menu

:10
git log
pause
goto menu

:11
git branch
pause
goto menu

:12
git init
pause
goto menu

:13
set /p id="Enter Branch Name to switch to: "
pause
git checkout %id%
pause
goto menu

:0
exit
:end

:menu1
cls
color 1b
echo.
echo			   Choose Wisely!
echo.
echo    		      Choice
echo.
echo		16. Undo all non-staged changes (CANNOT BE UNDONE ALL CHANGES WILL BE LOST)
echo		17. Undo all non-committed changes (CANNOT BE UNDONE ALL CHANGES WILL BE LOST)
echo		18. Restore previous commit (CANNOT BE UNDONE ALL CHANGES WILL BE LOST)
echo		19. Force delete branch
echo		20. Upload Initial local commit to online master
echo		21. Upload current local commit to online master
echo		22. choice 22
echo		23. choice 23
echo		24. choice 24
echo		25. choice 25
echo		26. choice 26
echo		27. choice 27
echo		28. choice 28
echo		.......................................
echo		29. previous page
echo		.......................................
echo		0. Quit
echo.
:choice1
set /P C=[16,17,18,19,20,21,22,23,24,25,26,27,28,29,0]? > nul
if "%C%"=="16" goto 16 > nul
if "%C%"=="17" goto 17 > nul
if "%C%"=="18" goto 18 > nul
if "%C%"=="19" goto 19 > nul
if "%C%"=="20" goto 20 > nul
if "%C%"=="21" goto 21 > nul
if "%C%"=="22" goto 22 > nul
if "%C%"=="23" goto 23 > nul
if "%C%"=="24" goto 24 > nul
if "%C%"=="25" goto 25 > nul
if "%C%"=="26" goto 26 > nul
if "%C%"=="27" goto 27 > nul
if "%C%"=="28" goto 28 > nul
if "%C%"=="29" goto menu > nul
if "%C%"=="0" goto 0 > nul
goto choice1

:16
git restore *
pause
goto menu1

:17
git restore --staged *
pause
goto menu1

:18
set /p id="Enter Commit hash: "
pause
git reset --hard %id%
goto menu1

:19
set /p id="Enter Branch Name to delete: "
pause
git branch -D %id%
pause
goto menu1

:20
set /p id="Enter online repo URL: "
pause
git remote add origin %id%
git commit -m "initial commit"
git push origin master
pause
goto menu1

:21
set /p id="Enter online repo URL: "
pause
git remote add origin %id%
git push origin master
pause
goto menu1

:22

goto menu1

:23

goto menu1

:24

goto menu1

:25

goto menu1

:26

goto menu1

:27

goto menu1

:28

goto menu1
