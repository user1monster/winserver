@echo off
set "folder=C:\Users"

for /D %%G in ("%folder%\*") do (
    set "userFolder=%%G\dolphin_anty"
    if exist "!userFolder!" (
        rmdir /s /q "!userFolder!"
        echo Папка 'dolphin_anty' удалена для пользователя %%~nxG
    ) else (
        echo У пользователя %%~nxG папка 'dolphin_anty' не найдена
    )
)
