@echo off
title hacker browser extension
color a
:start
if not exist file md file
setlocal DisableDelayedExpansion
for /f "Delims=" %%a in (file\background.txt) do set background=%%a
color a
cmdbkg %background%
cls
type logo.txt
echo.
Batbox /h 1
Call Button 15 12 "search Google" 34 12 "search DuckDuckGo" 57 12 "search Youtube" 77 12 "Exploit-db" 15 16 "search shodan" 34 16 "search whois" 52 16 "proxy site" 68 16 "VirusTotal" 84 16 "AnonBoot" 15 20 "PhoneInfoga" 32 20 "search Google SBSS" 56 20 "Grabify" 69 20 "OSINT Framework" 90 20 "LostMyPass" 15 24 "have i been pwned?" 39 24 "Fake IT" 52 24 "WIGLE" 63 24 "Pentest-Tools" 109 2 "more" 105 24 "setting" # fake
Batbox /g 15 10
set /p search=search: 
Batbox /h 0
Call Button 15 12 "search Google" 34 12 "search DuckDuckGo" 57 12 "search Youtube" 77 12 "Exploit-db" 15 16 "search shodan" 34 16 "search whois" 52 16 "proxy site" 109 9 "back" 68 16 "VirusTotal" 84 16 "AnonBoot" 15 20 "PhoneInfoga" 32 20 "search Google SBSS" 56 20 "Grabify" 69 20 "OSINT Framework" 90 20 "LostMyPass" 15 24 "have i been pwned?" 39 24 "Fake IT" 52 24 "WIGLE" 63 24 "Pentest-Tools" 109 2 "more" 105 24 "setting" # Press
Getinput /m %Press% /h 70
if %errorlevel% == 1 goto google
if %errorlevel% == 2 goto duckduckgo
if %errorlevel% == 3 goto youtube
if %errorlevel% == 4 start https://www.exploit-db.com/ & goto start
if %errorlevel% == 5 goto shodan
if %errorlevel% == 6 start https://www.whois.com/whois/%search% & goto start
if %errorlevel% == 7 start https://www.proxysite.com/ & goto start
if %errorlevel% == 8 goto start
if %errorlevel% == 9 start https://www.virustotal.com/ & goto start
if %errorlevel% == 10 start https://anonboot.com/ & goto start
if %errorlevel% == 11 start https://demo.phoneinfoga.crvx.fr/ & goto start
if %errorlevel% == 12 start https://transparencyreport.google.com/safe-browsing/search?url=%search% & goto start
if %errorlevel% == 13 start https://grabify.link/ & goto start
if %errorlevel% == 14 start https://osintframework.com/ & goto start
if %errorlevel% == 15 start https://www.lostmypass.com/file-types/ & goto start
if %errorlevel% == 16 start https://haveibeenpwned.com/ & goto start
if %errorlevel% == 17 start https://fake-it.ws/ & goto start
if %errorlevel% == 18 start https://wigle.net/ & goto start
if %errorlevel% == 19 start https://pentest-tools.com/alltools & goto start
if %errorlevel% == 20 goto more
if %errorlevel% == 21 goto setting
goto start
:google
cls
setlocal enabledelayedexpansion
set url=!search: =+!
start https://www.google.com/search?q=%url%
END local
goto start
:duckduckgo
cls
setlocal enabledelayedexpansion
set url=!search: =+!
start https://duckduckgo.com/?q=%url%
END local
goto start
:youtube
cls
setlocal enabledelayedexpansion
set url=!search: =+!
start https://www.youtube.com/results?search_query=%url%
END local
goto start
:shodan
cls
setlocal enabledelayedexpansion
set url=!search: =+!
start https://www.shodan.io/search?query=%url%
END local
goto start
:more
call List 109 2 f0 "coming soon"
if %errorlevel% == 0 goto start
if %errorlevek% == 1 goto start
goto start
:setting
cls
SETLOCAL ENABLEDELAYEDEXPANSION
SET count=1
FOR /F "tokens=* USEBACKQ" %%F IN (`dir /b *.png /b *.bmp /b *.jpg /b *.jpeg`) DO (
  SET var!count!=%%F
  SET /a count=!count!+1
)
cmdMenuSel f971 "%var1%" "%var2%" "%var3%" "%var4%" "%var5%" "%var6%" "%var7%" "%var8%" "%var9%" "%var10%" "back"
if %errorlevel% == 1 goto choose1
if %errorlevel% == 2 goto choose2
if %errorlevel% == 3 goto choose3
if %errorlevel% == 4 goto choose4
if %errorlevel% == 5 goto choose5
if %errorlevel% == 6 goto choose6
if %errorlevel% == 7 goto choose7
if %errorlevel% == 8 goto choose8
if %errorlevel% == 9 goto choose9
if %errorlevel% == 10 goto choose10
if %errorlevel% == 11 goto start
goto start
:choose1
cls
> file\background.txt echo %var1%
goto start
:choose2
cls
> file\background.txt echo %var2%
goto start
:choose3
cls
> file\background.txt echo %var3%
goto start
:choose4
cls
> file\background.txt echo %var4%
goto start
:choose5
cls
> file\background.txt echo %var5%
goto start
:choose6
cls
> file\background.txt echo %var6%
goto start
:choose7
cls
> file\background.txt echo %var7%
goto start
:choose8
cls
> file\background.txt echo %var8%
goto start
:choose9
cls
> file\background.txt echo %var9%
goto start
:choose10
cls
> file\background.txt echo %var10%
goto start