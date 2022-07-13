@echo off
set arg=%1
set flag=0
set curDir=%cd%

help > command.txt

if "%1"=="" (
set err=1
goto error)

if /%arg%==//? (goto help )

chcp 850 >nul

for /f %%i in ('findstr /B /i /c:"%arg%" command.txt') do if /i %%i==%arg% (
echo This is an internal command "%arg%"
goto exit
)

for %%e in ("%arg%") do (
set expand=%%~xe
)

set flag=0
for %%a in (%pathext%) do (
if /i "%expand%"=="%%a" (
set flag=1)
)

for %%i in (%cd%,%path%) do (
cd %%i 2>nul
if exist %arg% (

if %flag%==1 (
set fullPath=%%i
set fullArg=%arg%
goto print)

if exist %arg%\nul (
set err=4
goto error
)
set err=2
goto error
)

for %%j in (%pathext%) do (
if exist %arg%%%j (
set fullPath=%%i
set fullArg=%arg%%%j
goto print)
)
)
set err=3
goto error


:print
if %fullPath:~-1,1%==\ (echo %fullPath%%fullArg%) else (echo %fullPath%\%fullArg%)
set fullPath=
set fullArg=
goto exit


:checkExpand
echo This file is not executable, because it has extension : %expand%
echo Check the file extension
echo This program only works with executable files
goto exit

:notExist
if %flag%==1 (
echo This program file with specified extension doesn't exist in this computer
goto exit
)

if "%expand%"=="" (
echo It's not internal command for cmd and program file with this name doesn't exist in this computer
goto exit
) else ( goto checkExpand )

:help
echo This program implements an algorithm for launching programs and commands for cmd
echo To use this program, enter locator.cmd [executable file with expansion or without OR internal cmd command]
echo Example #1: locator.cmd hello.cmd (hello.cmd - executable file with expansion)
echo Example #2: locator.cmd hello (hello - executable file without expansion)
echo Example #3: locator.cmd color (color - internal cmd command)
goto exit

:error
if %err%==1 (
echo The syntax of the command is incorrect. Enter an argument.
echo To learn how to use this program, enter locator.cmd /?
goto exit
)
if %err%==2 (
goto checkExpand
)
if %err%==3 (
goto notExist
)
if %err%==4 (
echo The entered argument is a folder
goto exit
)

:exit
cd %curDir%
del command.txt