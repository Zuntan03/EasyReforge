@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\..\Model\adetailer

@REM https://civitai.com/models/150872?modelVersionId=484684
call %CIVITAI_MODEL_UNZIP% bbox\ vagina-v4.1.pt 150872 484684
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
