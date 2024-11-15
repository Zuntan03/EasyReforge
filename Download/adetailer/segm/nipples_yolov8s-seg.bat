@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\..\Model\adetailer

@REM https://civitai.com/models/490259?modelVersionId=863091
call %CIVITAI_MODEL_UNZIP% segm\ nipples_yolov8s-seg.pt 490259 863091
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
