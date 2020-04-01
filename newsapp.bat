:: Check for Python Installation
python --version 3>NUL
if errorlevel 1 goto errorNoPython

:: Reaching here means Python is installed.
:: Execute stuff...
git clone https://github.com/HENRYMARTIN5/NewsAppExe.git
cd NewsAppExe
python main.py
:: Once done, exit the batch file -- skips executing the errorNoPython section
goto:eof

:errorNoPython
echo.
echo Error: Python not installed. Installing python...
echo NOTE: This requires you have git installed.
git clone https://github.com/HENRYMARTIN5/NewsAppExe.git
cd NewsAppExe
msiexec /i python-3.4.1.msi  /qb
python main.py
"C:\Program Files\used\systems\innoventiq\accumanager\required\excutables\python-3.7.3-amd64.exe"
