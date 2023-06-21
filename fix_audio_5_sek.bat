@echo off

REM Остановка процесса explorer.exe
taskkill /f /im explorer.exe

REM Ожидание 5 секунд, пока процесс закроется полностью
timeout /t 5 /nobreak >nul

REM Перезапуск процесса explorer.exe
start explorer.exe

REM Возвращение пользователя в систему
logoff

REM Выход из скрипта
exit
