@echo off
Setlocal EnableDelayedExpansion
set dirName=%1
set rnd=1

if "%1"=="" (
set err=1
goto error)

if /%dirName%==//? (goto help )

if not exist %dirName%\nul (
set err=2
goto error)

for /R %dirName% %%i in (*.txt) do (
Call :setName %%i
iconv -s -f utf-8 -t utf-8 "%%i">"!newFile!" || iconv -f cp866 -t utf-8 "%%i">"!newFile!"
copy /y "!newFile!" "%%i" > nul
del "!newFile!"
)
goto exit

:setName
set/A rnd=!RANDOM!*1000/32678 + !rnd!*1000/32768 + 1
set newFile=%~dp1%~n1!rnd!.txt
if exist !newFile! goto setName
exit /B

:help
echo Arguments passed: directory name or key /? to get help
echo This program converts all txt files with Russian texts in the transferred directory from cp866 encoding to utf-8 encoding with the preservation of the directory structure.
echo Example #1: enconvert.cmd directoryName
echo Example #2: enconvert.cmd /?
goto exit

:error
if %err%==1 (
echo The syntax of the command is incorrect. Enter an argument.
echo To learn how to use this program, enter enconvert.cmd /?
goto exit
)
if %err%==2 (
echo The directory with name "%dirName%" doesn't exist
goto exit
)

:exit