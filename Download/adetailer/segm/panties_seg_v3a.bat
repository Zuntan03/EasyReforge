@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\..\Model\adetailer

@REM https://civitai.com/models/988420?modelVersionId=1604151
call %CIVITAI_MODEL_UNZIP% segm\ panties_seg_v3a.pt 988420 1604151
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
