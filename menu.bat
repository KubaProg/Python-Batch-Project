@echo off & @chcp 1250>nul

:start
cls

echo Co chcesz zrobiæ?
echo 1 - Uruchom program
echo 2 - Informacje o projekcie
echo 3 - Backup
echo 4 - Wyjscie
echo Opcja:

set /p whatapp=

if %whatapp%==1 (
    goto 1
) else if %whatapp%==2 (
    goto 2
) else if %whatapp%==3 (
    goto 3
) else if %whatapp%==4 (
	goto 4
)

:1

"C:\Users\jakub\AppData\Local\Programs\Python\Python310\python.exe" "D:\Projekt Skryptowe\main.py"
"C:\Users\jakub\AppData\Local\Programs\Python\Python310\python.exe" "D:\Projekt Skryptowe\raport.py"
echo Skrypy pythonowy zosta³ pomyœlnie wykonany, sprawdŸ raport aby zobaczyæ wyniki
pause
goto start

:2

info.bat
goto start


:3
for /f %%a in ('powershell -Command "Get-Date -format yyyy_MM_dd__HH_mm_ss"') do set datetime=%%a
if not exist "Backups" mkdir Backups
cd Backups
mkdir "%datetime%"
cd %datetime%
mkdir inputs
mkdir outputs
cd ../
cd ../
xcopy /s inputs Backups\"%datetime%"\inputs
xcopy /s outputs Backups\"%datetime%"\outputs
xcopy raport.html Backups\"%datetime%"
echo ***Backup zosta³ wykonany pomyœlnie, kliknij 'enter' by powróciæ do menu***
pause
goto start

:4

echo Zakonczono dzialanie programu, kliknij 'enter' by wylaczyc okno
pause

