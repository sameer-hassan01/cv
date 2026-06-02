@echo off
set EDGE="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist %EDGE% set EDGE="%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
%EDGE% --headless --disable-gpu --no-margins --print-to-pdf-no-header "--print-to-pdf=%~dp0Sameer_Hassan_CV.pdf" "file:///%~dp0cv.html"
copy /Y "%~dp0Sameer_Hassan_CV.pdf" "%~dp0portfolio\Sameer_Hassan_CV.pdf" >nul
echo Done. PDF regenerated.
pause
