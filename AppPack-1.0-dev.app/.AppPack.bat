@echo off

set AppHtml=./Contents/Portable/AppPack-1.0/AppPack.html

if exist "%ProgramFiles%\Mozilla Firefox\firefox.exe" (
	"%ProgramFiles%\Mozilla Firefox\firefox.exe" -chrome %AppHtml%
) else if exist "%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe" (
	"%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe" -chrome %AppHtml%
) else if exist "%ProgramFiles%\Firefox Developer Edition\firefox.exe" (
	"%ProgramFiles%\Firefox Developer Edition\firefox.exe" -chrome %AppHtml%
) else if exist "%ProgramFiles(x86)%\Firefox Developer Edition\firefox.exe" (
	"%ProgramFiles(x86)%\Firefox Developer Edition\firefox.exe" -chrome %AppHtml%
) else if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
	"%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app=%__CD__%%AppHtml%
) else if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
	"%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" --app=%__CD__%%AppHtml%
) else (
	start "" ".\Contents\Windows\AppPack.hta"
)
