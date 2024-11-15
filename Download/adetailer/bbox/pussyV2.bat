@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\..\Model\adetailer

@REM https://civitai.com/models/132388?modelVersionId=149617
call %CIVITAI_MODEL_UNZIP% bbox\ pussyV2.pt 132388 149617
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
