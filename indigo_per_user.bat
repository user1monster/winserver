@echo off

setlocal

set "install_path=%userprofile%\Apps"

echo Starting installation of indigo...

rem Downloading indigo setup file from the official website
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://indigobrowser.b-cdn.net/indigo/6.3.6/indigo-6.3.6-1-windows_x86_64_setup.exe', 'indigo.exe')"

rem Installing indigo silently using the downloaded file
start /wait indigo.exe /VERYSILENT /SUPPRESSMSGBOXES

rem Deleting the downloaded setup file after installation
del indigo.exe

echo indigo installed successfully!

setlocal
pause
