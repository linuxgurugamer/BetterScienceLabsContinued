rem
rem This file should be run on Windows, in the 
rem echo BetterScienceLabsContinued directory
rem
rem Double-clicking on the file while in Windows Explorer should
rem be sufficient

@echo off
echo.
echo This batch file will copy the missing textures from the inaccessable
echo Squad/zDeprecated directory for the Mk1-2Pod part, also known as
echo the Mk 1-2 Pod
echo.
echo.
pause

mkdir Squad
cd Squad
mkdir Command
cd Command
mkdir Mk1-2Pod
cd Mk1-2Pod
pwd
copy ..\..\..\..\Squad\zDeprecated\Parts\Command\Mk1-2Pod\*
del mk1-2CommandPod.cfg

echo.
echo.
echo The files have been copied
echo.
pause
