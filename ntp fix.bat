@echo off

echo Changing NTP server to Ukraine...

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" /v "NtpServer" /d "ua.pool.ntp.org,0x1" /f

echo NTP server changed to Ukraine (ua.pool.ntp.org).

echo Restarting Windows Time service...

net stop w32time
net start w32time

echo Windows Time service restarted.

echo Time synchronization with the new NTP server will occur automatically.

pause
