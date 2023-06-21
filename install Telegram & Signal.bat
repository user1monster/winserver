@echo off

setlocal

set "install_path=%userprofile%\Apps"

echo Starting installation of Telegram Desktop...

rem Downloading Telegram Desktop setup file from the official website
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://telegram.org/dl/desktop/win', 'TelegramSetup.exe')"

rem Installing Telegram Desktop silently using the downloaded file
start /wait TelegramSetup.exe /VERYSILENT /SUPPRESSMSGBOXES

rem Deleting the downloaded setup file after installation
del TelegramSetup.exe

echo Telegram Desktop installed successfully!

setlocal

set "install_path=%userprofile%\Apps"

echo Starting installation of Signal Desktop...

rem Downloading Signal Desktop setup file from the official website
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://updates.signal.org/desktop/signal-desktop-win-6.21.0.exe', 'SignalSetup.exe')"

rem Installing Signal Desktop silently using the downloaded file
start /wait SignalSetup.exe /S

rem Deleting the downloaded setup file after installation
del SignalSetup.exe

echo Signal Desktop installed successfully!

endlocal
pause
