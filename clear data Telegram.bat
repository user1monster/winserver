@echo off

rem Установка пути к папке с пользователями
set "usersdir=C:\Users"

rem Перебор всех пользователей в папке с пользователями
for /d %%u in ("%usersdir%\*") do (
    rem Проверка наличия папки Загрузки/Telegram у текущего пользователя
    if exist "%%u\Downloads\Telegram Desktop" (
        echo Найдена папка Загрузки/Telegram Desktop у пользователя %%~nxu.
        rem Удаление содержимого папки Загрузки/Telegram
        del /q "%%u\Downloads\Telegram Desktop\*"
        echo Очистка папки Загрузки/Telegram Desktop у пользователя %%~nxu завершена.
    ) else (
        echo Папка Загрузки/Telegram у пользователя %%~nxu не найдена.
    )
)

echo Все папки Загрузки/Telegram успешно очищены.

pause
