@echo off

set AppHtml=./Contents/Portable/AppPack-1.0/AppPack.html

cscript /nologo ".\Contents\Windows\SetIcon.js"

if exist "%ProgramFiles%\Mozilla Firefox\firefox.exe" (
	start "" "%ProgramFiles%\Mozilla Firefox\firefox.exe" -chrome %AppHtml%
) else if exist "%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe" (
	start "" "%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe" -chrome %AppHtml%
) else if exist "%ProgramFiles%\Firefox Developer Edition\firefox.exe" (
	start "" "%ProgramFiles%\Firefox Developer Edition\firefox.exe" -chrome %AppHtml%
) else if exist "%ProgramFiles(x86)%\Firefox Developer Edition\firefox.exe" (
	start "" "%ProgramFiles(x86)%\Firefox Developer Edition\firefox.exe" -chrome %AppHtml%
) else if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
	start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app=%__CD__%%AppHtml%
) else if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
	start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" --app=%__CD__%%AppHtml%
) else (
	start "" ".\Contents\Windows\AppPack.hta"
)
